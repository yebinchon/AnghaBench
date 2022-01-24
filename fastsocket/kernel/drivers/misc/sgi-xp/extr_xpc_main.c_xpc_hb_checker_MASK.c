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
struct TYPE_2__ {int /*<<< orphan*/  (* process_activate_IRQ_rcvd ) () ;} ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  XPC_HB_CHECK_CPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ xpc_activate_IRQ_rcvd ; 
 int /*<<< orphan*/  xpc_activate_IRQ_wq ; 
 TYPE_1__ xpc_arch_ops ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ xpc_exiting ; 
 int xpc_hb_check_interval ; 
 scalar_t__ xpc_hb_check_timeout ; 
 int /*<<< orphan*/  xpc_hb_checker_exited ; 
 int /*<<< orphan*/  xpc_part ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int
FUNC11(void *ignore)
{
	int force_IRQ = 0;

	/* this thread was marked active by xpc_hb_init() */

	FUNC4(current, FUNC1(XPC_HB_CHECK_CPU));

	/* set our heartbeating to other partitions into motion */
	xpc_hb_check_timeout = jiffies + (xpc_hb_check_interval * HZ);
	FUNC9();

	while (!xpc_exiting) {

		FUNC2(xpc_part, "woke up with %d ticks rem; %d IRQs have "
			"been received\n",
			(int)(xpc_hb_check_timeout - jiffies),
			xpc_activate_IRQ_rcvd);

		/* checking of remote heartbeats is skewed by IRQ handling */
		if (FUNC6(xpc_hb_check_timeout)) {
			xpc_hb_check_timeout = jiffies +
			    (xpc_hb_check_interval * HZ);

			FUNC2(xpc_part, "checking remote heartbeats\n");
			FUNC8();

			/*
			 * On sn2 we need to periodically recheck to ensure no
			 * IRQ/amo pairs have been missed.
			 */
			if (FUNC3())
				force_IRQ = 1;
		}

		/* check for outstanding IRQs */
		if (xpc_activate_IRQ_rcvd > 0 || force_IRQ != 0) {
			force_IRQ = 0;
			FUNC2(xpc_part, "processing activate IRQs "
				"received\n");
			xpc_arch_ops.process_activate_IRQ_rcvd();
		}

		/* wait for IRQ or timeout */
		(void)FUNC7(xpc_activate_IRQ_wq,
					       (FUNC6(
						xpc_hb_check_timeout) ||
						xpc_activate_IRQ_rcvd > 0 ||
						xpc_exiting));
	}

	FUNC10();

	FUNC2(xpc_part, "heartbeat checker is exiting\n");

	/* mark this thread as having exited */
	FUNC0(&xpc_hb_checker_exited);
	return 0;
}