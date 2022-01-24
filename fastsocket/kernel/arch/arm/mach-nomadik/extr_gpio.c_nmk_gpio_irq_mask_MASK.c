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
struct nmk_gpio_chip {int edge_rising; int edge_falling; int /*<<< orphan*/  lock; scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ NMK_GPIO_FWIMSC ; 
 scalar_t__ NMK_GPIO_RWIMSC ; 
 int FUNC0 (unsigned int) ; 
 struct nmk_gpio_chip* FUNC1 (unsigned int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(unsigned int irq)
{
	int gpio;
	struct nmk_gpio_chip *nmk_chip;
	unsigned long flags;
	u32 bitmask, reg;

	gpio = FUNC0(irq);
	nmk_chip = FUNC1(irq);
	bitmask = FUNC2(gpio);
	if (!nmk_chip)
		return;

	/* we must individually clear the two edges */
	FUNC4(&nmk_chip->lock, flags);
	if (nmk_chip->edge_rising & bitmask) {
		reg = FUNC3(nmk_chip->addr + NMK_GPIO_RWIMSC);
		reg &= ~bitmask;
		FUNC6(reg, nmk_chip->addr + NMK_GPIO_RWIMSC);
	}
	if (nmk_chip->edge_falling & bitmask) {
		reg = FUNC3(nmk_chip->addr + NMK_GPIO_FWIMSC);
		reg &= ~bitmask;
		FUNC6(reg, nmk_chip->addr + NMK_GPIO_FWIMSC);
	}
	FUNC5(&nmk_chip->lock, flags);
}