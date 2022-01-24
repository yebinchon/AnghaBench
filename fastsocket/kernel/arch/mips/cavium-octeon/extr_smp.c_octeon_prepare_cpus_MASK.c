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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_DISABLED ; 
 int /*<<< orphan*/  OCTEON_IRQ_MBOX0 ; 
 int /*<<< orphan*/  OCTEON_IRQ_MBOX1 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mailbox_interrupt ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC5(unsigned int max_cpus)
{
	FUNC2(FUNC0(FUNC1()), 0xffffffff);
	if (FUNC4(OCTEON_IRQ_MBOX0, mailbox_interrupt, IRQF_DISABLED,
			"mailbox0", mailbox_interrupt)) {
		FUNC3("Cannot request_irq(OCTEON_IRQ_MBOX0)\n");
	}
	if (FUNC4(OCTEON_IRQ_MBOX1, mailbox_interrupt, IRQF_DISABLED,
			"mailbox1", mailbox_interrupt)) {
		FUNC3("Cannot request_irq(OCTEON_IRQ_MBOX1)\n");
	}
}