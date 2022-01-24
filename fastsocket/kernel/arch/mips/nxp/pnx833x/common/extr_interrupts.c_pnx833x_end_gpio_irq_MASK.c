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
 unsigned int PNX833X_GPIO_IRQ_BASE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  pnx833x_gpio_pnx833x_irq_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(unsigned int irq)
{
	int pin = irq - PNX833X_GPIO_IRQ_BASE;
	unsigned long flags;
	FUNC1(&pnx833x_gpio_pnx833x_irq_lock, flags);
	FUNC0(pin);
	FUNC2(&pnx833x_gpio_pnx833x_irq_lock, flags);
}