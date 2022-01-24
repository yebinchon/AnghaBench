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
struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {int* pwm_tmin; int* pwm_trange; int /*<<< orphan*/  lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int ADT7462_PWM_HYST_MASK ; 
 int ADT7462_PWM_RANGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t EINVAL ; 
 int FUNC1 (long) ; 
 struct adt7462_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,int,long*) ; 
 struct i2c_client* FUNC7 (struct device*) ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
			    struct device_attribute *devattr,
			    const char *buf,
			    size_t count)
{
	int temp;
	struct sensor_device_attribute *attr = FUNC8(devattr);
	struct i2c_client *client = FUNC7(dev);
	struct adt7462_data *data = FUNC2(client);
	int tmin, trange_value;
	long trange;

	if (FUNC6(buf, 10, &trange))
		return -EINVAL;

	/* trange = tmax - tmin */
	tmin = (data->pwm_tmin[attr->index] - 64) * 1000;
	trange_value = FUNC1(trange - tmin);

	if (trange_value < 0)
		return -EINVAL;

	temp = trange_value << ADT7462_PWM_RANGE_SHIFT;
	temp |= data->pwm_trange[attr->index] & ADT7462_PWM_HYST_MASK;

	FUNC4(&data->lock);
	data->pwm_trange[attr->index] = temp;
	FUNC3(client, FUNC0(attr->index),
				  temp);
	FUNC5(&data->lock);

	return count;
}