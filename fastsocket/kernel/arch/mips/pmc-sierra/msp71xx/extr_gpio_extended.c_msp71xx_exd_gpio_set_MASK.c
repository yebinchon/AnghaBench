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
struct msp71xx_exd_gpio_chip {int /*<<< orphan*/  reg; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct msp71xx_exd_gpio_chip* FUNC2 (struct gpio_chip*) ; 

__attribute__((used)) static void FUNC3(struct gpio_chip *chip,
				 unsigned offset, int value)
{
	struct msp71xx_exd_gpio_chip *msp71xx_chip =
	    FUNC2(chip);
	const unsigned bit = FUNC0(offset);

	FUNC1(1 << (bit + (value ? 1 : 0)), msp71xx_chip->reg);
}