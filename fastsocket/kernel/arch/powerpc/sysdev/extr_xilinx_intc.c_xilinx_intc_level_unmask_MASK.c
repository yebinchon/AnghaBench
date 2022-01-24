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
 int XINTC_IAR ; 
 int XINTC_SIE ; 
 void* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(unsigned int virq)
{
	int irq = FUNC3(virq);
	void * regs = FUNC0(virq);
	FUNC2("unmask: %d\n", irq);
	FUNC1(regs + XINTC_SIE, 1 << irq);

	/* ack level irqs because they can't be acked during
	 * ack function since the handle_level_irq function
	 * acks the irq before calling the inerrupt handler
	 */
	FUNC1(regs + XINTC_IAR, 1 << irq);
}