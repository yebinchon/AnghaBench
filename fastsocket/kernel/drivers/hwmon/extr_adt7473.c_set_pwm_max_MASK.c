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
struct adt7473_data {long* pwm_max; int /*<<< orphan*/  lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t EINVAL ; 
 long FUNC1 (long,int /*<<< orphan*/ ,int) ; 
 struct adt7473_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
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
	struct sensor_device_attribute *attr = FUNC8(devattr);
	struct i2c_client *client = FUNC7(dev);
	struct adt7473_data *data = FUNC2(client);
	long temp;

	if (FUNC6(buf, 10, &temp))
		return -EINVAL;

	temp = FUNC1(temp, 0, 255);

	FUNC4(&data->lock);
	data->pwm_max[attr->index] = temp;
	FUNC3(client, FUNC0(attr->index),
				  temp);
	FUNC5(&data->lock);

	return count;
}