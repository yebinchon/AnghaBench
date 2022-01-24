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
struct timer_trig_data {unsigned long delay_on; unsigned long delay_off; unsigned long brightness_on; int /*<<< orphan*/  timer; } ;
struct led_classdev {struct timer_trig_data* trigger_data; } ;

/* Variables and functions */
 unsigned long LED_OFF ; 
 scalar_t__ jiffies ; 
 unsigned long FUNC0 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct led_classdev*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct led_classdev *led_cdev = (struct led_classdev *) data;
	struct timer_trig_data *timer_data = led_cdev->trigger_data;
	unsigned long brightness;
	unsigned long delay;

	if (!timer_data->delay_on || !timer_data->delay_off) {
		FUNC1(led_cdev, LED_OFF);
		return;
	}

	brightness = FUNC0(led_cdev);
	if (!brightness) {
		/* Time to switch the LED on. */
		brightness = timer_data->brightness_on;
		delay = timer_data->delay_on;
	} else {
		/* Store the current brightness value to be able
		 * to restore it when the delay_off period is over.
		 */
		timer_data->brightness_on = brightness;
		brightness = LED_OFF;
		delay = timer_data->delay_off;
	}

	FUNC1(led_cdev, brightness);

	FUNC2(&timer_data->timer, jiffies + FUNC3(delay));
}