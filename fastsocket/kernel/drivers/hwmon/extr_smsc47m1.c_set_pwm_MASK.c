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
struct smsc47m1_data {int* pwm; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int FUNC0 (long) ; 
 int /*<<< orphan*/ * SMSC47M1_REG_PWM ; 
 struct smsc47m1_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct smsc47m1_data*,int /*<<< orphan*/ ,int) ; 
 struct sensor_device_attribute* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute
		       *devattr, const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC6(devattr);
	struct smsc47m1_data *data = FUNC1(dev);
	int nr = attr->index;
	long val = FUNC4(buf, NULL, 10);

	if (val < 0 || val > 255)
		return -EINVAL;

	FUNC2(&data->update_lock);
	data->pwm[nr] &= 0x81; /* Preserve additional bits */
	data->pwm[nr] |= FUNC0(val);
	FUNC5(data, SMSC47M1_REG_PWM[nr],
			     data->pwm[nr]);
	FUNC3(&data->update_lock);

	return count;
}