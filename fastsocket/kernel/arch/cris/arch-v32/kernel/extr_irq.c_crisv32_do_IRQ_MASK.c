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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

void
FUNC5(int irq, int block, struct pt_regs* regs)
{
	/* Interrupts that may not be moved to another CPU and
         * are IRQF_DISABLED may skip blocking. This is currently
         * only valid for the timer IRQ and the IPI and is used
         * for the timer interrupt to avoid watchdog starvation.
         */
	if (!block) {
		FUNC1(irq, regs);
		return;
	}

	FUNC0(irq, FUNC3());
	FUNC1(irq, regs);

	FUNC4(irq, FUNC2(irq));
}