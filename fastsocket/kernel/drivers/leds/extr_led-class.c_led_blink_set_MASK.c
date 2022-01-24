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
struct led_timer {unsigned long blink_delay_on; unsigned long blink_delay_off; int blink_brightness; int /*<<< orphan*/  blink_timer; } ;
struct led_classdev {int brightness; int max_brightness; int /*<<< orphan*/  (* blink_set ) (struct led_classdev*,unsigned long*,unsigned long*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct led_classdev*,int) ; 
 scalar_t__ jiffies ; 
 struct led_timer* FUNC1 (struct led_classdev*) ; 
 struct led_timer* FUNC2 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct led_timer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct led_classdev*,unsigned long*,unsigned long*) ; 

void FUNC6(struct led_classdev *led_cdev,
		   unsigned long *delay_on,
		   unsigned long *delay_off)
{
	struct led_timer *led;
	int current_brightness;

	if (led_cdev->blink_set &&
	    !led_cdev->blink_set(led_cdev, delay_on, delay_off))
		return;

	led = FUNC1(led_cdev);
	if (!led) {
		led = FUNC2(led_cdev);
		if (!led)
			return;
	}

	/* blink with 1 Hz as default if nothing specified */
	if (!*delay_on && !*delay_off)
		*delay_on = *delay_off = 500;

	if (led->blink_delay_on == *delay_on &&
	    led->blink_delay_off == *delay_off)
		return;

	current_brightness = led_cdev->brightness;
	if (current_brightness)
		led->blink_brightness = current_brightness;
	if (!led->blink_brightness)
		led->blink_brightness = led_cdev->max_brightness;

	FUNC3(led);
	led->blink_delay_on = *delay_on;
	led->blink_delay_off = *delay_off;

	/* never on - don't blink */
	if (!*delay_on)
		return;

	/* never off - just set to brightness */
	if (!*delay_off) {
		FUNC0(led_cdev, led->blink_brightness);
		return;
	}

	FUNC4(&led->blink_timer, jiffies + 1);
}