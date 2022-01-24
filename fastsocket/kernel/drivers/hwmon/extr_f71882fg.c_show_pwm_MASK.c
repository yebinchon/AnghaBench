#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct f71882fg_data {int pwm_enable; int* pwm; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * fan_full_speed; int /*<<< orphan*/ * fan_target; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 struct f71882fg_data* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 TYPE_1__* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
			struct device_attribute *devattr, char *buf)
{
	struct f71882fg_data *data = FUNC0(dev);
	int val, nr = FUNC5(devattr)->index;
	FUNC2(&data->update_lock);
	if (data->pwm_enable & (1 << (2 * nr)))
		/* PWM mode */
		val = data->pwm[nr];
	else {
		/* RPM mode */
		val = 255 * FUNC1(data->fan_target[nr])
			/ FUNC1(data->fan_full_speed[nr]);
	}
	FUNC3(&data->update_lock);
	return FUNC4(buf, "%d\n", val);
}