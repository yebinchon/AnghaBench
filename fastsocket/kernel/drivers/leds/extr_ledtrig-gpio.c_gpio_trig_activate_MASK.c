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
struct gpio_trig_data {int /*<<< orphan*/  work; struct led_classdev* led; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_desired_brightness ; 
 int /*<<< orphan*/  dev_attr_gpio ; 
 int /*<<< orphan*/  dev_attr_inverted ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gpio_trig_work ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_trig_data*) ; 
 struct gpio_trig_data* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct led_classdev *led)
{
	struct gpio_trig_data *gpio_data;
	int ret;

	gpio_data = FUNC4(sizeof(*gpio_data), GFP_KERNEL);
	if (!gpio_data)
		return;

	ret = FUNC1(led->dev, &dev_attr_gpio);
	if (ret)
		goto err_gpio;

	ret = FUNC1(led->dev, &dev_attr_inverted);
	if (ret)
		goto err_inverted;

	ret = FUNC1(led->dev, &dev_attr_desired_brightness);
	if (ret)
		goto err_brightness;

	gpio_data->led = led;
	led->trigger_data = gpio_data;
	FUNC0(&gpio_data->work, gpio_trig_work);

	return;

err_brightness:
	FUNC2(led->dev, &dev_attr_inverted);

err_inverted:
	FUNC2(led->dev, &dev_attr_gpio);

err_gpio:
	FUNC3(gpio_data);
}