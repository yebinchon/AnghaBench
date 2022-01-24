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
struct led_timer {int dummy; } ;
struct led_classdev {void (* brightness_set ) (struct led_classdev*,int) ;} ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 struct led_timer* FUNC0 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct led_timer*) ; 
 void FUNC2 (struct led_classdev*,int) ; 

void FUNC3(struct led_classdev *led_cdev,
			enum led_brightness brightness)
{
	struct led_timer *led = FUNC0(led_cdev);

	if (led)
		FUNC1(led);

	return led_cdev->brightness_set(led_cdev, brightness);
}