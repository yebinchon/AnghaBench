#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct pmcraid_instance {TYPE_3__* host; int /*<<< orphan*/  ioa_state; } ;
struct pmcraid_cmd {TYPE_2__* ioa_cb; struct pmcraid_instance* drv_inst; } ;
struct TYPE_6__ {int /*<<< orphan*/  host_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  ioasc; } ;
struct TYPE_5__ {TYPE_1__ ioasa; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOA_STATE_IN_RESET_ALERT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct pmcraid_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct pmcraid_cmd *cmd)
{
	struct pmcraid_instance *pinstance = cmd->drv_inst;
	u32 ioasc = FUNC0(cmd->ioa_cb->ioasa.ioasc);
	unsigned long lock_flags;

	/* configuration table entry size depends on firmware version. If fw
	 * version is not known, it is not possible to interpret IOA config
	 * table
	 */
	if (ioasc) {
		FUNC1("IOA Inquiry failed with %x\n", ioasc);
		FUNC4(pinstance->host->host_lock, lock_flags);
		pinstance->ioa_state = IOA_STATE_IN_RESET_ALERT;
		FUNC3(cmd);
		FUNC5(pinstance->host->host_lock, lock_flags);
	} else  {
		FUNC2(cmd);
	}
}