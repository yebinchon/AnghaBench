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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 unsigned long LED_OFF ; 
 struct led_classdev* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (struct led_classdev*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct led_classdev*) ; 
 unsigned long FUNC4 (char const*,char**,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t size)
{
	struct led_classdev *led_cdev = FUNC0(dev);
	ssize_t ret = -EINVAL;
	char *after;
	unsigned long state = FUNC4(buf, &after, 10);
	size_t count = after - buf;

	if (FUNC1(*after))
		count++;

	if (count == size) {
		ret = count;

		if (state == LED_OFF)
			FUNC3(led_cdev);
		FUNC2(led_cdev, state);
	}

	return ret;
}