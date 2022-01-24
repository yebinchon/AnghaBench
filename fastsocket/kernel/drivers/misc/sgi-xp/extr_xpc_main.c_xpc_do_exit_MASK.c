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
struct xpc_partition {scalar_t__ act_state; unsigned long disengage_timeout; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_2__ {int (* any_partition_engaged ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC1 (struct xpc_partition*,int) ; 
 unsigned long XPC_DEACTIVATE_PRINTMSG_INTERVAL ; 
 scalar_t__ XPC_P_AS_INACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int xpUnloading ; 
 short xp_max_npartitions ; 
 int /*<<< orphan*/  xpc_activate_IRQ_wq ; 
 TYPE_1__ xpc_arch_ops ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  xpc_die_notifier ; 
 int /*<<< orphan*/  xpc_discovery_exited ; 
 scalar_t__ xpc_disengage_timedout ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int xpc_exiting ; 
 int /*<<< orphan*/  xpc_hb_checker_exited ; 
 int /*<<< orphan*/  xpc_part ; 
 scalar_t__ FUNC17 (struct xpc_partition*) ; 
 struct xpc_partition* xpc_partitions ; 
 int /*<<< orphan*/  xpc_reboot_notifier ; 
 scalar_t__ xpc_sysctl ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 

__attribute__((used)) static void
FUNC20(enum xp_retval reason)
{
	short partid;
	int active_part_count, printed_waiting_msg = 0;
	struct xpc_partition *part;
	unsigned long printmsg_time, disengage_timeout = 0;

	/* a 'rmmod XPC' and a 'reboot' cannot both end up here together */
	FUNC0(xpc_exiting == 1);

	/*
	 * Let the heartbeat checker thread and the discovery thread
	 * (if one is running) know that they should exit. Also wake up
	 * the heartbeat checker thread in case it's sleeping.
	 */
	xpc_exiting = 1;
	FUNC13(&xpc_activate_IRQ_wq);

	/* wait for the discovery thread to exit */
	FUNC12(&xpc_discovery_exited);

	/* wait for the heartbeat checker thread to exit */
	FUNC12(&xpc_hb_checker_exited);

	/* sleep for a 1/3 of a second or so */
	(void)FUNC5(300);

	/* wait for all partitions to become inactive */

	printmsg_time = jiffies + (XPC_DEACTIVATE_PRINTMSG_INTERVAL * HZ);
	xpc_disengage_timedout = 0;

	do {
		active_part_count = 0;

		for (partid = 0; partid < xp_max_npartitions; partid++) {
			part = &xpc_partitions[partid];

			if (FUNC17(part) &&
			    part->act_state == XPC_P_AS_INACTIVE) {
				continue;
			}

			active_part_count++;

			FUNC1(part, reason);

			if (part->disengage_timeout > disengage_timeout)
				disengage_timeout = part->disengage_timeout;
		}

		if (xpc_arch_ops.any_partition_engaged()) {
			if (FUNC8(printmsg_time)) {
				FUNC2(xpc_part, "waiting for remote "
					 "partitions to deactivate, timeout in "
					 "%ld seconds\n", (disengage_timeout -
					 jiffies) / HZ);
				printmsg_time = jiffies +
				    (XPC_DEACTIVATE_PRINTMSG_INTERVAL * HZ);
				printed_waiting_msg = 1;
			}

		} else if (active_part_count > 0) {
			if (printed_waiting_msg) {
				FUNC2(xpc_part, "waiting for local partition"
					 " to deactivate\n");
				printed_waiting_msg = 0;
			}

		} else {
			if (!xpc_disengage_timedout) {
				FUNC2(xpc_part, "all partitions have "
					 "deactivated\n");
			}
			break;
		}

		/* sleep for a 1/3 of a second or so */
		(void)FUNC5(300);

	} while (1);

	FUNC0(xpc_arch_ops.any_partition_engaged());

	FUNC19();

	if (reason == xpUnloading) {
		(void)FUNC9(&xpc_die_notifier);
		(void)FUNC10(&xpc_reboot_notifier);
	}

	/* clear the interface to XPC's functions */
	FUNC14();

	if (xpc_sysctl)
		FUNC11(xpc_sysctl);

	FUNC18();

	if (FUNC3())
		FUNC15();
	else if (FUNC4())
		FUNC16();
}