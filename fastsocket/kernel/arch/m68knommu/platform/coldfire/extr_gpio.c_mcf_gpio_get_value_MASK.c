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
struct mcf_gpio_chip {int /*<<< orphan*/  ppdr; } ;
struct gpio_chip {unsigned int base; } ;

/* Variables and functions */
 struct mcf_gpio_chip* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct gpio_chip *chip, unsigned offset)
{
	struct mcf_gpio_chip *mcf_chip = FUNC0(chip);

	return FUNC2(mcf_chip->ppdr) & FUNC1(chip->base + offset);
}