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
struct led_classdev {struct gpio_trig_data* trigger_data; } ;
struct gpio_trig_data {unsigned int desired_brightness; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct led_classdev* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,char*,unsigned int*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t n)
{
	struct led_classdev *led = FUNC1(dev);
	struct gpio_trig_data *gpio_data = led->trigger_data;
	unsigned desired_brightness;
	int ret;

	ret = FUNC2(buf, "%u", &desired_brightness);
	if (ret < 1 || desired_brightness > 255) {
		FUNC0(dev, "invalid value\n");
		return -EINVAL;
	}

	gpio_data->desired_brightness = desired_brightness;

	return n;
}