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
struct gpio_trig_data {scalar_t__ inverted; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct led_classdev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	struct led_classdev *led = FUNC0(dev);
	struct gpio_trig_data *gpio_data = led->trigger_data;

	return FUNC1(buf, "%s\n", gpio_data->inverted ? "yes" : "no");
}