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
typedef  int u32 ;
struct TYPE_2__ {int base; } ;
struct nmk_gpio_chip {int /*<<< orphan*/  lock; scalar_t__ addr; TYPE_1__ chip; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NMK_GPIO_AFSLA ; 
 scalar_t__ NMK_GPIO_AFSLB ; 
 int NMK_GPIO_ALT_A ; 
 int NMK_GPIO_ALT_B ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct nmk_gpio_chip* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

int FUNC6(int gpio, int gpio_mode)
{
	struct nmk_gpio_chip *nmk_chip;
	unsigned long flags;
	u32 afunc, bfunc, bit;

	nmk_chip = FUNC1(FUNC0(gpio));
	if (!nmk_chip)
		return -EINVAL;

	bit = 1 << (gpio - nmk_chip->chip.base);

	FUNC3(&nmk_chip->lock, flags);
	afunc = FUNC2(nmk_chip->addr + NMK_GPIO_AFSLA) & ~bit;
	bfunc = FUNC2(nmk_chip->addr + NMK_GPIO_AFSLB) & ~bit;
	if (gpio_mode & NMK_GPIO_ALT_A)
		afunc |= bit;
	if (gpio_mode & NMK_GPIO_ALT_B)
		bfunc |= bit;
	FUNC5(afunc, nmk_chip->addr + NMK_GPIO_AFSLA);
	FUNC5(bfunc, nmk_chip->addr + NMK_GPIO_AFSLB);
	FUNC4(&nmk_chip->lock, flags);

	return 0;
}