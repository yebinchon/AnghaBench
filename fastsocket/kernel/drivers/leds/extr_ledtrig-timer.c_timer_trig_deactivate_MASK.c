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
struct timer_trig_data {int /*<<< orphan*/  timer; } ;
struct led_classdev {int /*<<< orphan*/  (* blink_set ) (struct led_classdev*,unsigned long*,unsigned long*) ;int /*<<< orphan*/  dev; struct timer_trig_data* trigger_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_delay_off ; 
 int /*<<< orphan*/  dev_attr_delay_on ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct timer_trig_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct led_classdev*,unsigned long*,unsigned long*) ; 

__attribute__((used)) static void FUNC4(struct led_classdev *led_cdev)
{
	struct timer_trig_data *timer_data = led_cdev->trigger_data;
	unsigned long on = 0, off = 0;

	if (timer_data) {
		FUNC1(led_cdev->dev, &dev_attr_delay_on);
		FUNC1(led_cdev->dev, &dev_attr_delay_off);
		FUNC0(&timer_data->timer);
		FUNC2(timer_data);
	}

	/* If there is hardware support for blinking, stop it */
	if (led_cdev->blink_set)
		led_cdev->blink_set(led_cdev, &on, &off);
}