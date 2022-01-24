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
struct gpio_chip {unsigned int base; int /*<<< orphan*/  (* set ) (struct gpio_chip*,unsigned int,int) ;scalar_t__ can_sleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ extra_checks ; 
 struct gpio_chip* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_chip*,unsigned int,int) ; 

void FUNC3(unsigned gpio, int value)
{
	struct gpio_chip	*chip;

	chip = FUNC1(gpio);
	FUNC0(extra_checks && chip->can_sleep);
	chip->set(chip, gpio - chip->base, value);
}