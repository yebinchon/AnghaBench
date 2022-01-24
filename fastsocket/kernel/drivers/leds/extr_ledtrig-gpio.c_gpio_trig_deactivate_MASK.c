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
struct led_classdev {int /*<<< orphan*/  dev; struct gpio_trig_data* trigger_data; } ;
struct gpio_trig_data {scalar_t__ gpio; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_desired_brightness ; 
 int /*<<< orphan*/  dev_attr_gpio ; 
 int /*<<< orphan*/  dev_attr_inverted ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_trig_data*) ; 

__attribute__((used)) static void FUNC5(struct led_classdev *led)
{
	struct gpio_trig_data *gpio_data = led->trigger_data;

	if (gpio_data) {
		FUNC0(led->dev, &dev_attr_gpio);
		FUNC0(led->dev, &dev_attr_inverted);
		FUNC0(led->dev, &dev_attr_desired_brightness);
		FUNC1(&gpio_data->work);
		if (gpio_data->gpio != 0)
			FUNC2(FUNC3(gpio_data->gpio), led);
		FUNC4(gpio_data);
	}
}