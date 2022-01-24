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
typedef  int /*<<< orphan*/  u32 ;
struct nmk_gpio_chip {int /*<<< orphan*/  lock; scalar_t__ addr; int /*<<< orphan*/  edge_falling; int /*<<< orphan*/  edge_rising; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 unsigned int IRQ_TYPE_EDGE_RISING ; 
 unsigned int IRQ_TYPE_LEVEL_HIGH ; 
 unsigned int IRQ_TYPE_LEVEL_LOW ; 
 scalar_t__ NMK_GPIO_FIMSC ; 
 scalar_t__ NMK_GPIO_RIMSC ; 
 int FUNC0 (unsigned int) ; 
 struct nmk_gpio_chip* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(unsigned int irq, unsigned int type)
{
	int gpio;
	struct nmk_gpio_chip *nmk_chip;
	unsigned long flags;
	u32 bitmask;

	gpio = FUNC0(irq);
	nmk_chip = FUNC1(irq);
	bitmask = FUNC2(gpio);
	if (!nmk_chip)
		return -EINVAL;

	if (type & IRQ_TYPE_LEVEL_HIGH)
		return -EINVAL;
	if (type & IRQ_TYPE_LEVEL_LOW)
		return -EINVAL;

	FUNC4(&nmk_chip->lock, flags);

	nmk_chip->edge_rising &= ~bitmask;
	if (type & IRQ_TYPE_EDGE_RISING)
		nmk_chip->edge_rising |= bitmask;
	FUNC6(nmk_chip->edge_rising, nmk_chip->addr + NMK_GPIO_RIMSC);

	nmk_chip->edge_falling &= ~bitmask;
	if (type & IRQ_TYPE_EDGE_FALLING)
		nmk_chip->edge_falling |= bitmask;
	FUNC6(nmk_chip->edge_falling, nmk_chip->addr + NMK_GPIO_FIMSC);

	FUNC5(&nmk_chip->lock, flags);

	FUNC3(irq);

	return 0;
}