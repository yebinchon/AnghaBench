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
typedef  int u8 ;
struct sensor_device_attribute {int index; } ;
struct f71805f_data {int* fan_ctrl; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  kobj; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FAN_CTRL_MODE_MANUAL ; 
 int FAN_CTRL_MODE_MASK ; 
 int FAN_CTRL_MODE_SPEED ; 
 int FAN_CTRL_MODE_TEMPERATURE ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct f71805f_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/ * f71805f_attr_pwm ; 
 int FUNC3 (struct f71805f_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct f71805f_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct sensor_device_attribute* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute
			      *devattr, const char *buf, size_t count)
{
	struct f71805f_data *data = FUNC2(dev);
	struct sensor_device_attribute *attr = FUNC9(devattr);
	int nr = attr->index;
	unsigned long val = FUNC7(buf, NULL, 10);
	u8 reg;

	if (val < 1 || val > 3)
		return -EINVAL;

	if (val > 1) { /* Automatic mode, user can't set PWM value */
		if (FUNC8(&dev->kobj, f71805f_attr_pwm[nr],
				     S_IRUGO))
			FUNC1(dev, "chmod -w pwm%d failed\n", nr + 1);
	}

	FUNC5(&data->update_lock);
	reg = FUNC3(data, FUNC0(nr))
	    & ~FAN_CTRL_MODE_MASK;
	switch (val) {
	case 1:
		reg |= FAN_CTRL_MODE_MANUAL;
		break;
	case 2:
		reg |= FAN_CTRL_MODE_TEMPERATURE;
		break;
	case 3:
		reg |= FAN_CTRL_MODE_SPEED;
		break;
	}
	data->fan_ctrl[nr] = reg;
	FUNC4(data, FUNC0(nr), reg);
	FUNC6(&data->update_lock);

	if (val == 1) { /* Manual mode, user can set PWM value */
		if (FUNC8(&dev->kobj, f71805f_attr_pwm[nr],
				     S_IRUGO | S_IWUSR))
			FUNC1(dev, "chmod +w pwm%d failed\n", nr + 1);
	}

	return count;
}