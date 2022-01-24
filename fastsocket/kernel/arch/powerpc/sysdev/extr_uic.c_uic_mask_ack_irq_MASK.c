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
typedef  int u32 ;
struct uic {int /*<<< orphan*/  lock; scalar_t__ dcrbase; } ;
struct irq_desc {int status; } ;

/* Variables and functions */
 int IRQ_LEVEL ; 
 scalar_t__ UIC_ER ; 
 scalar_t__ UIC_SR ; 
 struct uic* FUNC0 (unsigned int) ; 
 struct irq_desc* FUNC1 (unsigned int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC6 (unsigned int) ; 

__attribute__((used)) static void FUNC7(unsigned int virq)
{
	struct irq_desc *desc = FUNC1(virq);
	struct uic *uic = FUNC0(virq);
	unsigned int src = FUNC6(virq);
	unsigned long flags;
	u32 er, sr;

	sr = 1 << (31-src);
	FUNC4(&uic->lock, flags);
	er = FUNC2(uic->dcrbase + UIC_ER);
	er &= ~sr;
	FUNC3(uic->dcrbase + UIC_ER, er);
 	/* On the UIC, acking (i.e. clearing the SR bit)
	 * a level irq will have no effect if the interrupt
	 * is still asserted by the device, even if
	 * the interrupt is already masked. Therefore
	 * we only ack the egde interrupts here, while
	 * level interrupts are ack'ed after the actual
	 * isr call in the uic_unmask_irq()
	 */
	if (!(desc->status & IRQ_LEVEL))
		FUNC3(uic->dcrbase + UIC_SR, sr);
	FUNC5(&uic->lock, flags);
}