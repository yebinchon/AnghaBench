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
struct wm831x_status {int brightness; int /*<<< orphan*/  value_lock; int /*<<< orphan*/  work; scalar_t__ blink; } ;
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct wm831x_status* FUNC3 (struct led_classdev*) ; 

__attribute__((used)) static void FUNC4(struct led_classdev *led_cdev,
			   enum led_brightness value)
{
	struct wm831x_status *led = FUNC3(led_cdev);
	unsigned long flags;

	FUNC1(&led->value_lock, flags);
	led->brightness = value;
	if (value == LED_OFF)
		led->blink = 0;
	FUNC0(&led->work);
	FUNC2(&led->value_lock, flags);
}