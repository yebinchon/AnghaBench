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
struct gpio_chip {int dummy; } ;
struct ep93xx_gpio_chip {int /*<<< orphan*/  data_reg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 struct ep93xx_gpio_chip* FUNC4 (struct gpio_chip*) ; 

__attribute__((used)) static void FUNC5(struct gpio_chip *chip, unsigned offset, int val)
{
	struct ep93xx_gpio_chip *ep93xx_chip = FUNC4(chip);
	unsigned long flags;
	u8 v;

	FUNC3(flags);
	v = FUNC0(ep93xx_chip->data_reg);
	if (val)
		v |= (1 << offset);
	else
		v &= ~(1 << offset);
	FUNC1(v, ep93xx_chip->data_reg);
	FUNC2(flags);
}