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
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_chip*,unsigned int,int) ; 
 struct msp71xx_exd_gpio_chip* FUNC3 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip,
					unsigned offset, int value)
{
	struct msp71xx_exd_gpio_chip *msp71xx_chip =
	    FUNC3(chip);

	FUNC2(chip, offset, value);
	FUNC1(1 << FUNC0(offset), msp71xx_chip->reg);
	return 0;
}