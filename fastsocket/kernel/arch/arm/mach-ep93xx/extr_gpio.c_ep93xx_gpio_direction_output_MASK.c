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
typedef  int u8 ;
struct gpio_chip {unsigned int base; } ;
struct ep93xx_gpio_chip {int /*<<< orphan*/  data_dir_reg; int /*<<< orphan*/  data_reg; } ;

/* Variables and functions */
 int EP93XX_GPIO_LINE_MAX_IRQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 struct ep93xx_gpio_chip* FUNC6 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *chip,
					unsigned offset, int val)
{
	struct ep93xx_gpio_chip *ep93xx_chip = FUNC6(chip);
	unsigned long flags;
	int line;
	u8 v;

	FUNC5(flags);

	/* Set the value */
	v = FUNC0(ep93xx_chip->data_reg);
	if (val)
		v |= (1 << offset);
	else
		v &= ~(1 << offset);
	FUNC1(v, ep93xx_chip->data_reg);

	/* Drive as an output */
	line = chip->base + offset;
	if (line <= EP93XX_GPIO_LINE_MAX_IRQ) {
		/* Ports A/B/F */
		FUNC2(line);
		FUNC3(line >> 3);
	}

	v = FUNC0(ep93xx_chip->data_dir_reg);
	v |= (1 << offset);
	FUNC1(v, ep93xx_chip->data_dir_reg);

	FUNC4(flags);

	return 0;
}