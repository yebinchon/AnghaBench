#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gpio_chip {int can_sleep; int ngpio; int /*<<< orphan*/  names; int /*<<< orphan*/  owner; int /*<<< orphan*/ * dev; int /*<<< orphan*/  label; int /*<<< orphan*/  base; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; } ;
struct pca953x_chip {int /*<<< orphan*/  names; TYPE_1__* client; int /*<<< orphan*/  gpio_start; struct gpio_chip gpio_chip; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  pca953x_gpio_direction_input ; 
 int /*<<< orphan*/  pca953x_gpio_direction_output ; 
 int /*<<< orphan*/  pca953x_gpio_get_value ; 
 int /*<<< orphan*/  pca953x_gpio_set_value ; 

__attribute__((used)) static void FUNC0(struct pca953x_chip *chip, int gpios)
{
	struct gpio_chip *gc;

	gc = &chip->gpio_chip;

	gc->direction_input  = pca953x_gpio_direction_input;
	gc->direction_output = pca953x_gpio_direction_output;
	gc->get = pca953x_gpio_get_value;
	gc->set = pca953x_gpio_set_value;
	gc->can_sleep = 1;

	gc->base = chip->gpio_start;
	gc->ngpio = gpios;
	gc->label = chip->client->name;
	gc->dev = &chip->client->dev;
	gc->owner = THIS_MODULE;
	gc->names = chip->names;
}