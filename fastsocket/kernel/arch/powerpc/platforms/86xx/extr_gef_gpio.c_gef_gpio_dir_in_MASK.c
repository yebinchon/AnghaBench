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
struct of_mm_gpio_chip {scalar_t__ regs; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ GEF_GPIO_DIRECT ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 struct of_mm_gpio_chip* FUNC2 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned offset)
{
	unsigned int data;
	struct of_mm_gpio_chip *mmchip = FUNC2(chip);

	data = FUNC0(mmchip->regs + GEF_GPIO_DIRECT);
	data = data | (0x1 << offset);
	FUNC1(data, mmchip->regs + GEF_GPIO_DIRECT);

	return 0;
}