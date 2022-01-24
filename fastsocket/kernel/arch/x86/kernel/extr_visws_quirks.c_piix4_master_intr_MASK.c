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
struct irq_desc {int status; int /*<<< orphan*/ * action; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int IRQ_DISABLED ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int cached_irq_mask ; 
 int cached_master_mask ; 
 int cached_slave_mask ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  i8259A_lock ; 
 int FUNC2 (int) ; 
 struct irq_desc* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct irq_desc*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	int realirq;
	struct irq_desc *desc;
	unsigned long flags;

	FUNC7(&i8259A_lock, flags);

	/* Find out what's interrupting in the PIIX4 master 8259 */
	FUNC6(0x0c, 0x20);		/* OCW3 Poll command */
	realirq = FUNC2(0x20);

	/*
	 * Bit 7 == 0 means invalid/spurious
	 */
	if (FUNC9(!(realirq & 0x80)))
		goto out_unlock;

	realirq &= 7;

	if (FUNC9(realirq == 2)) {
		FUNC6(0x0c, 0xa0);
		realirq = FUNC2(0xa0);

		if (FUNC9(!(realirq & 0x80)))
			goto out_unlock;

		realirq = (realirq & 7) + 8;
	}

	/* mask and ack interrupt */
	cached_irq_mask |= 1 << realirq;
	if (FUNC9(realirq > 7)) {
		FUNC2(0xa1);
		FUNC6(cached_slave_mask, 0xa1);
		FUNC6(0x60 + (realirq & 7), 0xa0);
		FUNC6(0x60 + 2, 0x20);
	} else {
		FUNC2(0x21);
		FUNC6(cached_master_mask, 0x21);
		FUNC6(0x60 + realirq, 0x20);
	}

	FUNC8(&i8259A_lock, flags);

	desc = FUNC3(realirq);

	/*
	 * handle this 'virtual interrupt' as a Cobalt one now.
	 */
	FUNC4(realirq, desc);

	if (FUNC5(desc->action != NULL))
		FUNC1(realirq, desc->action);

	if (!(desc->status & IRQ_DISABLED))
		FUNC0(realirq);

	return IRQ_HANDLED;

out_unlock:
	FUNC8(&i8259A_lock, flags);
	return IRQ_NONE;
}