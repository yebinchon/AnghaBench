#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pmcraid_isr_param {int hrrq_id; struct pmcraid_instance* drv_inst; } ;
struct pmcraid_instance {int* host_toggle_bit; int /*<<< orphan*/ ** hrrq_curr; TYPE_1__* host; int /*<<< orphan*/  outstanding_cmds; int /*<<< orphan*/  pending_pool_lock; struct pmcraid_cmd** cmd_list; int /*<<< orphan*/ ** hrrq_start; int /*<<< orphan*/ ** hrrq_end; int /*<<< orphan*/ * hrrq_lock; } ;
struct pmcraid_cmd {int /*<<< orphan*/  (* cmd_done ) (struct pmcraid_cmd*) ;int /*<<< orphan*/  timer; int /*<<< orphan*/  free_list; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int __le32 ;
struct TYPE_2__ {int /*<<< orphan*/ * host_lock; } ;

/* Variables and functions */
 int HRRQ_TOGGLE_BIT ; 
 int PMCRAID_MAX_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC9 (struct pmcraid_cmd*) ; 

__attribute__((used)) static void FUNC10(unsigned long instance)
{
	struct pmcraid_isr_param *hrrq_vector;
	struct pmcraid_instance *pinstance;
	unsigned long hrrq_lock_flags;
	unsigned long pending_lock_flags;
	unsigned long host_lock_flags;
	spinlock_t *lockp; /* hrrq buffer lock */
	int id;
	__le32 resp;

	hrrq_vector = (struct pmcraid_isr_param *)instance;
	pinstance = hrrq_vector->drv_inst;
	id = hrrq_vector->hrrq_id;
	lockp = &(pinstance->hrrq_lock[id]);

	/* loop through each of the commands responded by IOA. Each HRRQ buf is
	 * protected by its own lock. Traversals must be done within this lock
	 * as there may be multiple tasklets running on multiple CPUs. Note
	 * that the lock is held just for picking up the response handle and
	 * manipulating hrrq_curr/toggle_bit values.
	 */
	FUNC6(lockp, hrrq_lock_flags);

	resp = FUNC2(*(pinstance->hrrq_curr[id]));

	while ((resp & HRRQ_TOGGLE_BIT) ==
		pinstance->host_toggle_bit[id]) {

		int cmd_index = resp >> 2;
		struct pmcraid_cmd *cmd = NULL;

		if (pinstance->hrrq_curr[id] < pinstance->hrrq_end[id]) {
			pinstance->hrrq_curr[id]++;
		} else {
			pinstance->hrrq_curr[id] = pinstance->hrrq_start[id];
			pinstance->host_toggle_bit[id] ^= 1u;
		}

		if (cmd_index >= PMCRAID_MAX_CMD) {
			/* In case of invalid response handle, log message */
			FUNC4("Invalid response handle %d\n", cmd_index);
			resp = FUNC2(*(pinstance->hrrq_curr[id]));
			continue;
		}

		cmd = pinstance->cmd_list[cmd_index];
		FUNC7(lockp, hrrq_lock_flags);

		FUNC6(&pinstance->pending_pool_lock,
				   pending_lock_flags);
		FUNC3(&cmd->free_list);
		FUNC7(&pinstance->pending_pool_lock,
					pending_lock_flags);
		FUNC1(&cmd->timer);
		FUNC0(&pinstance->outstanding_cmds);

		if (cmd->cmd_done == pmcraid_ioa_reset) {
			FUNC6(pinstance->host->host_lock,
					  host_lock_flags);
			cmd->cmd_done(cmd);
			FUNC7(pinstance->host->host_lock,
					       host_lock_flags);
		} else if (cmd->cmd_done != NULL) {
			cmd->cmd_done(cmd);
		}
		/* loop over until we are done with all responses */
		FUNC6(lockp, hrrq_lock_flags);
		resp = FUNC2(*(pinstance->hrrq_curr[id]));
	}

	FUNC7(lockp, hrrq_lock_flags);
}