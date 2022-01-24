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
struct timer_trig_data {unsigned long delay_on; int /*<<< orphan*/  timer; int /*<<< orphan*/  delay_off; } ;
struct led_classdev {scalar_t__ (* blink_set ) (struct led_classdev*,unsigned long*,int /*<<< orphan*/ *) ;struct timer_trig_data* trigger_data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct led_classdev* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned long FUNC4 (char const*,char**,int) ; 
 scalar_t__ FUNC5 (struct led_classdev*,unsigned long*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t size)
{
	struct led_classdev *led_cdev = FUNC1(dev);
	struct timer_trig_data *timer_data = led_cdev->trigger_data;
	int ret = -EINVAL;
	char *after;
	unsigned long state = FUNC4(buf, &after, 10);
	size_t count = after - buf;

	if (FUNC2(*after))
		count++;

	if (count == size) {
		if (timer_data->delay_on != state) {
			/* the new value differs from the previous */
			timer_data->delay_on = state;

			/* deactivate previous settings */
			FUNC0(&timer_data->timer);

			/* try to activate hardware acceleration, if any */
			if (!led_cdev->blink_set ||
			    led_cdev->blink_set(led_cdev,
			      &timer_data->delay_on, &timer_data->delay_off)) {
				/* no hardware acceleration, blink via timer */
				FUNC3(&timer_data->timer, jiffies + 1);
			}
		}
		ret = count;
	}

	return ret;
}