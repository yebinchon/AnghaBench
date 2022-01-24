#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ ioa_state; } ;
struct pmcraid_instance {int ioa_reset_in_progress; TYPE_5__* host; int /*<<< orphan*/  ioa_state; TYPE_4__ scn; struct pmcraid_cmd* reset_cmd; scalar_t__ ioa_reset_attempts; TYPE_1__* pdev; } ;
struct pmcraid_cmd {int /*<<< orphan*/  cmd_done; TYPE_3__* ioa_cb; struct pmcraid_instance* drv_inst; } ;
struct TYPE_10__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_7__ {int /*<<< orphan*/ * cdb; } ;
struct TYPE_8__ {TYPE_2__ ioarcb; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOA_STATE_IN_RESET_ALERT ; 
 scalar_t__ PMC_DEVICE_EVENT_RESET_START ; 
 scalar_t__ PMC_DEVICE_EVENT_SHUTDOWN_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct pmcraid_cmd* FUNC2 (struct pmcraid_instance*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  pmcraid_ioa_reset ; 
 int /*<<< orphan*/  FUNC4 (struct pmcraid_instance*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct pmcraid_cmd *cmd)
{
	struct pmcraid_instance *pinstance = cmd->drv_inst;
	unsigned long lock_flags;

	FUNC0(&pinstance->pdev->dev,
		"Adapter being reset due to cmd(CDB[0] = %x) timeout\n",
		cmd->ioa_cb->ioarcb.cdb[0]);

	/* Command timeouts result in hard reset sequence. The command that got
	 * timed out may be the one used as part of reset sequence. In this
	 * case restart reset sequence using the same command block even if
	 * reset is in progress. Otherwise fail this command and get a free
	 * command block to restart the reset sequence.
	 */
	FUNC7(pinstance->host->host_lock, lock_flags);
	if (!pinstance->ioa_reset_in_progress) {
		pinstance->ioa_reset_attempts = 0;
		cmd = FUNC2(pinstance);

		/* If we are out of command blocks, just return here itself.
		 * Some other command's timeout handler can do the reset job
		 */
		if (cmd == NULL) {
			FUNC8(pinstance->host->host_lock,
					       lock_flags);
			FUNC1("no free cmnd block for timeout handler\n");
			return;
		}

		pinstance->reset_cmd = cmd;
		pinstance->ioa_reset_in_progress = 1;
	} else {
		FUNC3("reset is already in progress\n");

		if (pinstance->reset_cmd != cmd) {
			/* This command should have been given to IOA, this
			 * command will be completed by fail_outstanding_cmds
			 * anyway
			 */
			FUNC1("cmd is pending but reset in progress\n");
		}

		/* If this command was being used as part of the reset
		 * sequence, set cmd_done pointer to pmcraid_ioa_reset. This
		 * causes fail_outstanding_commands not to return the command
		 * block back to free pool
		 */
		if (cmd == pinstance->reset_cmd)
			cmd->cmd_done = pmcraid_ioa_reset;
	}

	/* Notify apps of important IOA bringup/bringdown sequences */
	if (pinstance->scn.ioa_state != PMC_DEVICE_EVENT_RESET_START &&
	    pinstance->scn.ioa_state != PMC_DEVICE_EVENT_SHUTDOWN_START)
		FUNC4(pinstance,
					PMC_DEVICE_EVENT_RESET_START);

	pinstance->ioa_state = IOA_STATE_IN_RESET_ALERT;
	FUNC6(pinstance->host);
	FUNC5(cmd);
	FUNC8(pinstance->host->host_lock, lock_flags);
}