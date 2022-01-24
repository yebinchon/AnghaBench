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
struct gpio_bank {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {unsigned int status; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IH_GPIO_BASE ; 
 unsigned int IH_MPUIO_BASE ; 
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 unsigned int IRQ_TYPE_EDGE_RISING ; 
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gpio_bank*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 struct gpio_bank* FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 TYPE_1__* irq_desc ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(unsigned irq, unsigned type)
{
	struct gpio_bank *bank;
	unsigned gpio;
	int retval;
	unsigned long flags;

	if (!FUNC4() && irq > IH_MPUIO_BASE)
		gpio = FUNC0(irq - IH_MPUIO_BASE);
	else
		gpio = irq - IH_GPIO_BASE;

	if (FUNC3(gpio) < 0)
		return -EINVAL;

	if (type & ~IRQ_TYPE_SENSE_MASK)
		return -EINVAL;

	/* OMAP1 allows only only edge triggering */
	if (!FUNC4()
			&& (type & (IRQ_TYPE_LEVEL_LOW|IRQ_TYPE_LEVEL_HIGH)))
		return -EINVAL;

	bank = FUNC6(irq);
	FUNC7(&bank->lock, flags);
	retval = FUNC2(bank, FUNC5(gpio), type);
	if (retval == 0) {
		irq_desc[irq].status &= ~IRQ_TYPE_SENSE_MASK;
		irq_desc[irq].status |= type;
	}
	FUNC8(&bank->lock, flags);

	if (type & (IRQ_TYPE_LEVEL_LOW | IRQ_TYPE_LEVEL_HIGH))
		FUNC1(irq, handle_level_irq);
	else if (type & (IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_EDGE_RISING))
		FUNC1(irq, handle_edge_irq);

	return retval;
}