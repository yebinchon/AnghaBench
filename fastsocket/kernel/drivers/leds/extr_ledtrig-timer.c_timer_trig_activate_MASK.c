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
struct TYPE_2__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct timer_trig_data {scalar_t__ brightness_on; int /*<<< orphan*/  delay_off; int /*<<< orphan*/  delay_on; TYPE_1__ timer; } ;
struct led_classdev {scalar_t__ max_brightness; struct timer_trig_data* trigger_data; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* blink_set ) (struct led_classdev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ LED_OFF ; 
 int /*<<< orphan*/  dev_attr_delay_off ; 
 int /*<<< orphan*/  dev_attr_delay_on ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct timer_trig_data*) ; 
 struct timer_trig_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct led_classdev*) ; 
 int /*<<< orphan*/  led_timer_function ; 
 int /*<<< orphan*/  FUNC6 (struct led_classdev*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct led_classdev *led_cdev)
{
	struct timer_trig_data *timer_data;
	int rc;

	timer_data = FUNC4(sizeof(struct timer_trig_data), GFP_KERNEL);
	if (!timer_data)
		return;

	timer_data->brightness_on = FUNC5(led_cdev);
	if (timer_data->brightness_on == LED_OFF)
		timer_data->brightness_on = led_cdev->max_brightness;
	led_cdev->trigger_data = timer_data;

	FUNC2(&timer_data->timer);
	timer_data->timer.function = led_timer_function;
	timer_data->timer.data = (unsigned long) led_cdev;

	rc = FUNC0(led_cdev->dev, &dev_attr_delay_on);
	if (rc)
		goto err_out;
	rc = FUNC0(led_cdev->dev, &dev_attr_delay_off);
	if (rc)
		goto err_out_delayon;

	/* If there is hardware support for blinking, start one
	 * user friendly blink rate chosen by the driver.
	 */
	if (led_cdev->blink_set)
		led_cdev->blink_set(led_cdev,
			&timer_data->delay_on, &timer_data->delay_off);

	return;

err_out_delayon:
	FUNC1(led_cdev->dev, &dev_attr_delay_on);
err_out:
	led_cdev->trigger_data = NULL;
	FUNC3(timer_data);
}