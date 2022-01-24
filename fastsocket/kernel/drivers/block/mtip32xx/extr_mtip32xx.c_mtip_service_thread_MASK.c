#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mtip_port {int flags; int* cmds_to_issue; int /*<<< orphan*/  svc_wait; } ;
struct driver_data {int slot_groups; int dd_flag; struct mtip_port* port; } ;

/* Variables and functions */
 unsigned long MTIP_DDF_REBUILD_FAILED_BIT ; 
 unsigned long MTIP_DDF_REMOVE_PENDING_BIT ; 
 unsigned long MTIP_PF_ISSUE_CMDS_BIT ; 
 int MTIP_PF_PAUSE_IO ; 
 unsigned long MTIP_PF_REBUILD_BIT ; 
 unsigned long MTIP_PF_SVC_THD_ACTIVE_BIT ; 
 unsigned long MTIP_PF_SVC_THD_STOP_BIT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int*) ; 
 unsigned long FUNC1 (int*,unsigned int,unsigned long) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtip_port*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int*) ; 
 int FUNC6 (unsigned long,int*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(void *data)
{
	struct driver_data *dd = (struct driver_data *)data;
	unsigned long slot, slot_start, slot_wrap;
	unsigned int num_cmd_slots = dd->slot_groups * 32;
	struct mtip_port *port = dd->port;

	while (1) {
		/*
		 * the condition is to check neither an internal command is
		 * is in progress nor error handling is active
		 */
		FUNC8(port->svc_wait, (port->flags) &&
			!(port->flags & MTIP_PF_PAUSE_IO));

		if (FUNC2())
			break;

		if (FUNC7(FUNC6(MTIP_DDF_REMOVE_PENDING_BIT,
				&dd->dd_flag)))
			break;

		FUNC5(MTIP_PF_SVC_THD_ACTIVE_BIT, &port->flags);
		if (FUNC6(MTIP_PF_ISSUE_CMDS_BIT, &port->flags)) {
			slot = 1;
			/* used to restrict the loop to one iteration */
			slot_start = num_cmd_slots;
			slot_wrap = 0;
			while (1) {
				slot = FUNC1(port->cmds_to_issue,
						num_cmd_slots, slot);
				if (slot_wrap == 1) {
					if ((slot_start >= slot) ||
						(slot >= num_cmd_slots))
						break;
				}
				if (FUNC7(slot_start == num_cmd_slots))
					slot_start = slot;

				if (FUNC7(slot == num_cmd_slots)) {
					slot = 1;
					slot_wrap = 1;
					continue;
				}

				/* Issue the command to the hardware */
				FUNC4(port, slot);

				FUNC0(slot, port->cmds_to_issue);
			}

			FUNC0(MTIP_PF_ISSUE_CMDS_BIT, &port->flags);
		} else if (FUNC6(MTIP_PF_REBUILD_BIT, &port->flags)) {
			if (!FUNC3(dd))
				FUNC5(MTIP_DDF_REBUILD_FAILED_BIT,
							&dd->dd_flag);
			FUNC0(MTIP_PF_REBUILD_BIT, &port->flags);
		}
		FUNC0(MTIP_PF_SVC_THD_ACTIVE_BIT, &port->flags);

		if (FUNC6(MTIP_PF_SVC_THD_STOP_BIT, &port->flags))
			break;
	}
	return 0;
}