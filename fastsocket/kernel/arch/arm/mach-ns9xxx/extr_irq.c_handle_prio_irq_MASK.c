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
struct irqaction {int dummy; } ;
struct irq_desc {int status; int /*<<< orphan*/  lock; TYPE_1__* chip; struct irqaction* action; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* ack ) (unsigned int) ;int /*<<< orphan*/  (* mask ) (unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IRQ_DISABLED ; 
 int IRQ_INPROGRESS ; 
 int IRQ_REPLAY ; 
 int IRQ_WAITING ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irqaction*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct irq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(unsigned int irq, struct irq_desc *desc)
{
	struct irqaction *action;
	irqreturn_t action_ret;

	FUNC4(&desc->lock);

	FUNC0(desc->status & IRQ_INPROGRESS);

	desc->status &= ~(IRQ_REPLAY | IRQ_WAITING);
	FUNC2(irq, desc);

	action = desc->action;
	if (FUNC8(!action || (desc->status & IRQ_DISABLED)))
		goto out_mask;

	desc->status |= IRQ_INPROGRESS;
	FUNC5(&desc->lock);

	action_ret = FUNC1(irq, action);

	/* XXX: There is no direct way to access noirqdebug, so check
	 * unconditionally for spurious irqs...
	 * Maybe this function should go to kernel/irq/chip.c? */
	FUNC3(irq, desc, action_ret);

	FUNC4(&desc->lock);
	desc->status &= ~IRQ_INPROGRESS;

	if (desc->status & IRQ_DISABLED)
out_mask:
		desc->chip->mask(irq);

	/* ack unconditionally to unmask lower prio irqs */
	desc->chip->ack(irq);

	FUNC5(&desc->lock);
}