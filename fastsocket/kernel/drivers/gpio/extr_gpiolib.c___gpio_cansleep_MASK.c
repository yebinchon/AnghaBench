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
struct gpio_chip {int can_sleep; } ;

/* Variables and functions */
 struct gpio_chip* FUNC0 (unsigned int) ; 

int FUNC1(unsigned gpio)
{
	struct gpio_chip	*chip;

	/* only call this on GPIOs that are valid! */
	chip = FUNC0(gpio);

	return chip->can_sleep;
}