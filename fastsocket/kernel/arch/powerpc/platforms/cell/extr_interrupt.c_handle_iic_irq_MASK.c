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
struct TYPE_2__ {int /*<<< orphan*/  (* eoi ) (unsigned int) ;} ;

/* Variables and functions */
 int IRQ_DISABLED ; 
 int IRQ_INPROGRESS ; 
 int IRQ_PENDING ; 
 int IRQ_REPLAY ; 
 int IRQ_WAITING ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,struct irqaction*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irq_desc*) ; 
 int /*<<< orphan*/  noirqdebug ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct irq_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(unsigned int irq, struct irq_desc *desc)
{
	FUNC3(&desc->lock);

	desc->status &= ~(IRQ_REPLAY | IRQ_WAITING);

	/*
	 * If we're currently running this IRQ, or its disabled,
	 * we shouldn't process the IRQ. Mark it pending, handle
	 * the necessary masking and go out
	 */
	if (FUNC6((desc->status & (IRQ_INPROGRESS | IRQ_DISABLED)) ||
		    !desc->action)) {
		desc->status |= IRQ_PENDING;
		goto out_eoi;
	}

	FUNC1(irq, desc);

	/* Mark the IRQ currently in progress.*/
	desc->status |= IRQ_INPROGRESS;

	do {
		struct irqaction *action = desc->action;
		irqreturn_t action_ret;

		if (FUNC6(!action))
			goto out_eoi;

		desc->status &= ~IRQ_PENDING;
		FUNC4(&desc->lock);
		action_ret = FUNC0(irq, action);
		if (!noirqdebug)
			FUNC2(irq, desc, action_ret);
		FUNC3(&desc->lock);

	} while ((desc->status & (IRQ_PENDING | IRQ_DISABLED)) == IRQ_PENDING);

	desc->status &= ~IRQ_INPROGRESS;
out_eoi:
	desc->chip->eoi(irq);
	FUNC4(&desc->lock);
}