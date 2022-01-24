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
struct led_classdev {int flags; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int LED_CORE_SUSPENDRESUME ; 
 struct led_classdev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct led_classdev*) ; 

__attribute__((used)) static int FUNC2(struct device *dev)
{
	struct led_classdev *led_cdev = FUNC0(dev);

	if (led_cdev->flags & LED_CORE_SUSPENDRESUME)
		FUNC1(led_cdev);

	return 0;
}