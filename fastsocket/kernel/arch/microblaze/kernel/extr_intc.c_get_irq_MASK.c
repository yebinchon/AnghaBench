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
 scalar_t__ INTC_BASE ; 
 scalar_t__ IVR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

unsigned int FUNC2(struct pt_regs *regs)
{
	int irq;

	/*
	 * NOTE: This function is the one that needs to be improved in
	 * order to handle multiple interrupt controllers. It currently
	 * is hardcoded to check for interrupts only on the first INTC.
	 */
	irq = FUNC0(INTC_BASE + IVR);
	FUNC1("get_irq: %d\n", irq);

	return irq;
}