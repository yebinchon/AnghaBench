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
struct gpio_chip {scalar_t__ base; scalar_t__ ngpio; int /*<<< orphan*/  owner; int /*<<< orphan*/  label; int /*<<< orphan*/  set; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  free; int /*<<< orphan*/  request; } ;
struct pinmux_info {scalar_t__ first_gpio; scalar_t__ last_gpio; int /*<<< orphan*/  name; struct gpio_chip chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pinmux_info*) ; 
 int /*<<< orphan*/  sh_gpio_direction_input ; 
 int /*<<< orphan*/  sh_gpio_direction_output ; 
 int /*<<< orphan*/  sh_gpio_free ; 
 int /*<<< orphan*/  sh_gpio_get ; 
 int /*<<< orphan*/  sh_gpio_request ; 
 int /*<<< orphan*/  sh_gpio_set ; 

int FUNC4(struct pinmux_info *pip)
{
	struct gpio_chip *chip = &pip->chip;

	FUNC2("sh pinmux: %s handling gpio %d -> %d\n",
		pip->name, pip->first_gpio, pip->last_gpio);

	FUNC3(pip);

	chip->request = sh_gpio_request;
	chip->free = sh_gpio_free;
	chip->direction_input = sh_gpio_direction_input;
	chip->get = sh_gpio_get;
	chip->direction_output = sh_gpio_direction_output;
	chip->set = sh_gpio_set;

	FUNC0(pip->first_gpio != 0); /* needs testing */

	chip->label = pip->name;
	chip->owner = THIS_MODULE;
	chip->base = pip->first_gpio;
	chip->ngpio = (pip->last_gpio - pip->first_gpio) + 1;

	return FUNC1(chip);
}