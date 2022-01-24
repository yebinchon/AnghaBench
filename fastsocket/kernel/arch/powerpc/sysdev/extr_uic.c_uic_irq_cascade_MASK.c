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
typedef  int /*<<< orphan*/  u32 ;
struct uic {int /*<<< orphan*/  irqhost; scalar_t__ dcrbase; } ;
struct irq_desc {int status; int /*<<< orphan*/  lock; TYPE_1__* chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* unmask ) (unsigned int) ;int /*<<< orphan*/  (* ack ) (unsigned int) ;int /*<<< orphan*/  (* mask_ack ) (unsigned int) ;int /*<<< orphan*/  (* mask ) (unsigned int) ;} ;

/* Variables and functions */
 int IRQ_DISABLED ; 
 int IRQ_LEVEL ; 
 scalar_t__ UIC_MSR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct uic* FUNC2 (unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 

void FUNC11(unsigned int virq, struct irq_desc *desc)
{
	struct uic *uic = FUNC2(virq);
	u32 msr;
	int src;
	int subvirq;

	FUNC5(&desc->lock);
	if (desc->status & IRQ_LEVEL)
		desc->chip->mask(virq);
	else
		desc->chip->mask_ack(virq);
	FUNC6(&desc->lock);

	msr = FUNC4(uic->dcrbase + UIC_MSR);
	if (!msr) /* spurious interrupt */
		goto uic_irq_ret;

	src = 32 - FUNC0(msr);

	subvirq = FUNC3(uic->irqhost, src);
	FUNC1(subvirq);

uic_irq_ret:
	FUNC5(&desc->lock);
	if (desc->status & IRQ_LEVEL)
		desc->chip->ack(virq);
	if (!(desc->status & IRQ_DISABLED) && desc->chip->unmask)
		desc->chip->unmask(virq);
	FUNC6(&desc->lock);
}