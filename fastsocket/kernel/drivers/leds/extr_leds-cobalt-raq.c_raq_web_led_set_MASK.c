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
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int /*<<< orphan*/  LED_WEB ; 
 int /*<<< orphan*/  led_port ; 
 int /*<<< orphan*/  led_value ; 
 int /*<<< orphan*/  led_value_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct led_classdev *led_cdev,
			    enum led_brightness brightness)
{
	unsigned long flags;

	FUNC0(&led_value_lock, flags);

	if (brightness)
		led_value |= LED_WEB;
	else
		led_value &= ~LED_WEB;
	FUNC2(led_value, led_port);

	FUNC1(&led_value_lock, flags);
}