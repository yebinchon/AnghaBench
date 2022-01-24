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
struct wm8350_led {int value; int /*<<< orphan*/  value_lock; int /*<<< orphan*/  work; } ;
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct wm8350_led* FUNC3 (struct led_classdev*) ; 

__attribute__((used)) static void FUNC4(struct led_classdev *led_cdev,
			   enum led_brightness value)
{
	struct wm8350_led *led = FUNC3(led_cdev);
	unsigned long flags;

	FUNC1(&led->value_lock, flags);
	led->value = value;
	FUNC0(&led->work);
	FUNC2(&led->value_lock, flags);
}