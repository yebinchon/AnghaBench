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
struct gpio_bank {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 unsigned int IH_GPIO_BASE ; 
 int FUNC0 (struct gpio_bank*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 struct gpio_bank* FUNC3 (unsigned int) ; 

__attribute__((used)) static int FUNC4(unsigned int irq, unsigned int enable)
{
	unsigned int gpio = irq - IH_GPIO_BASE;
	struct gpio_bank *bank;
	int retval;

	if (FUNC1(gpio) < 0)
		return -ENODEV;
	bank = FUNC3(irq);
	retval = FUNC0(bank, FUNC2(gpio), enable);

	return retval;
}