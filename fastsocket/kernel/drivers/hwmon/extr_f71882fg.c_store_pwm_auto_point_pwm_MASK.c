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
struct f71882fg_data {int pwm_enable; long** pwm_auto_point_pwm; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; int nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  F71882FG_REG_PWM_ENABLE ; 
 long FUNC1 (long,int /*<<< orphan*/ ,int) ; 
 struct f71882fg_data* FUNC2 (struct device*) ; 
 int FUNC3 (struct f71882fg_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct f71882fg_data*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 long FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
					struct device_attribute *devattr,
					const char *buf, size_t count)
{
	struct f71882fg_data *data = FUNC2(dev);
	int pwm = FUNC8(devattr)->index;
	int point = FUNC8(devattr)->nr;
	long val = FUNC7(buf, NULL, 10);
	val = FUNC1(val, 0, 255);

	FUNC5(&data->update_lock);
	data->pwm_enable = FUNC3(data, F71882FG_REG_PWM_ENABLE);
	if (data->pwm_enable & (1 << (2 * pwm))) {
		/* PWM mode */
	} else {
		/* RPM mode */
		if (val < 29)	/* Prevent negative numbers */
			val = 255;
		else
			val = (255 - val) * 32 / val;
	}
	FUNC4(data, FUNC0(pwm, point), val);
	data->pwm_auto_point_pwm[pwm][point] = val;
	FUNC6(&data->update_lock);

	return count;
}