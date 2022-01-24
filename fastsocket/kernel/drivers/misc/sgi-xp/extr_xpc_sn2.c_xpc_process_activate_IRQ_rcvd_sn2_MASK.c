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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int xpc_activate_IRQ_rcvd ; 
 int /*<<< orphan*/  xpc_activate_IRQ_rcvd_lock ; 
 int FUNC2 () ; 

__attribute__((used)) static void
FUNC3(void)
{
	unsigned long irq_flags;
	int n_IRQs_expected;
	int n_IRQs_detected;

	FUNC0(&xpc_activate_IRQ_rcvd_lock, irq_flags);
	n_IRQs_expected = xpc_activate_IRQ_rcvd;
	xpc_activate_IRQ_rcvd = 0;
	FUNC1(&xpc_activate_IRQ_rcvd_lock, irq_flags);

	n_IRQs_detected = FUNC2();
	if (n_IRQs_detected < n_IRQs_expected) {
		/* retry once to help avoid missing amo */
		(void)FUNC2();
	}
}