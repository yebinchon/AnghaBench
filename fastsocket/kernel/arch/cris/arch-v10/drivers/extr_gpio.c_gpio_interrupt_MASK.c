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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long* R_IRQ_MASK1_CLR ; 
 unsigned long* R_IRQ_READ1 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  gpio_lock ; 
 unsigned long gpio_pa_irq_enabled_mask ; 
 scalar_t__ gpio_some_alarms ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t
FUNC4(int irq, void *dev_id)
{
	unsigned long tmp;
	unsigned long flags;

	FUNC2(&gpio_lock, flags);

	/* Find what PA interrupts are active */
	tmp = (*R_IRQ_READ1);

	/* Find those that we have enabled */
	tmp &= gpio_pa_irq_enabled_mask;

	/* Clear them.. */
	*R_IRQ_MASK1_CLR = tmp;
	gpio_pa_irq_enabled_mask &= ~tmp;

	FUNC3(&gpio_lock, flags);

	if (gpio_some_alarms)
		return FUNC0(FUNC1());

        return IRQ_NONE;
}