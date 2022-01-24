#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct pmcraid_instance {scalar_t__ ioa_state; int ioa_bringdown; int force_ioa_reset; TYPE_1__* host; scalar_t__ ioa_reset_in_progress; int /*<<< orphan*/  reset_wait_q; struct pmcraid_cmd* reset_cmd; scalar_t__ ioa_shutdown_type; } ;
struct pmcraid_cmd {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 scalar_t__ IOA_STATE_DEAD ; 
 scalar_t__ SHUTDOWN_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct pmcraid_cmd* FUNC1 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(
	struct pmcraid_instance *pinstance,
	u8 shutdown_type,
	u8 target_state
)
{
	struct pmcraid_cmd *reset_cmd = NULL;
	unsigned long lock_flags;
	int reset = 1;

	FUNC6(pinstance->host->host_lock, lock_flags);

	if (pinstance->ioa_reset_in_progress) {
		FUNC2("reset_reload: reset is already in progress\n");

		FUNC7(pinstance->host->host_lock, lock_flags);

		FUNC8(pinstance->reset_wait_q,
			   !pinstance->ioa_reset_in_progress);

		FUNC6(pinstance->host->host_lock, lock_flags);

		if (pinstance->ioa_state == IOA_STATE_DEAD) {
			FUNC7(pinstance->host->host_lock,
					       lock_flags);
			FUNC2("reset_reload: IOA is dead\n");
			return reset;
		} else if (pinstance->ioa_state == target_state) {
			reset = 0;
		}
	}

	if (reset) {
		FUNC2("reset_reload: proceeding with reset\n");
		FUNC4(pinstance->host);
		reset_cmd = FUNC1(pinstance);

		if (reset_cmd == NULL) {
			FUNC0("no free cmnd for reset_reload\n");
			FUNC7(pinstance->host->host_lock,
					       lock_flags);
			return reset;
		}

		if (shutdown_type == SHUTDOWN_NORMAL)
			pinstance->ioa_bringdown = 1;

		pinstance->ioa_shutdown_type = shutdown_type;
		pinstance->reset_cmd = reset_cmd;
		pinstance->force_ioa_reset = reset;
		FUNC2("reset_reload: initiating reset\n");
		FUNC3(reset_cmd);
		FUNC7(pinstance->host->host_lock, lock_flags);
		FUNC2("reset_reload: waiting for reset to complete\n");
		FUNC8(pinstance->reset_wait_q,
			   !pinstance->ioa_reset_in_progress);

		FUNC2("reset_reload: reset is complete !!\n");
		FUNC5(pinstance->host);
		if (pinstance->ioa_state == target_state)
			reset = 0;
	}

	return reset;
}