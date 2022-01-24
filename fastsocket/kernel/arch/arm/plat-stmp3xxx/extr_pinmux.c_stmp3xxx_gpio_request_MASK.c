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
struct gpio_chip {unsigned int base; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIN_GPIO ; 
 int FUNC0 (unsigned int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC1(struct gpio_chip *chip, unsigned offset)
{
	return FUNC0(chip->base + offset, PIN_GPIO, "gpio");
}