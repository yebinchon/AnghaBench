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
struct sensor_device_attribute {int index; } ;
struct it87_data {int fan_main_ctrl; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * manual_pwm_ctl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  IT87_REG_FAN_CTL ; 
 int /*<<< orphan*/  IT87_REG_FAN_MAIN_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct it87_data* FUNC2 (struct device*) ; 
 int FUNC3 (struct it87_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct it87_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC8(attr);
	int nr = sensor_attr->index;

	struct it87_data *data = FUNC2(dev);
	int val = FUNC7(buf, NULL, 10);

	FUNC5(&data->update_lock);

	if (val == 0) {
		int tmp;
		/* make sure the fan is on when in on/off mode */
		tmp = FUNC3(data, IT87_REG_FAN_CTL);
		FUNC4(data, IT87_REG_FAN_CTL, tmp | (1 << nr));
		/* set on/off mode */
		data->fan_main_ctrl &= ~(1 << nr);
		FUNC4(data, IT87_REG_FAN_MAIN_CTRL, data->fan_main_ctrl);
	} else if (val == 1) {
		/* set SmartGuardian mode */
		data->fan_main_ctrl |= (1 << nr);
		FUNC4(data, IT87_REG_FAN_MAIN_CTRL, data->fan_main_ctrl);
		/* set saved pwm value, clear FAN_CTLX PWM mode bit */
		FUNC4(data, FUNC0(nr), FUNC1(data->manual_pwm_ctl[nr]));
	} else {
		FUNC6(&data->update_lock);
		return -EINVAL;
	}

	FUNC6(&data->update_lock);
	return count;
}