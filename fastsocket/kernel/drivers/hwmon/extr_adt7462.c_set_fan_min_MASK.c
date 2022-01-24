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
struct adt7462_data {long* fan_min; int /*<<< orphan*/  lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t EINVAL ; 
 long FUNC1 (long) ; 
 long FUNC2 (long,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adt7462_data*,size_t) ; 
 struct adt7462_data* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,int,long*) ; 
 struct i2c_client* FUNC9 (struct device*) ; 
 struct sensor_device_attribute* FUNC10 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
			   struct device_attribute *devattr,
			   const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC10(devattr);
	struct i2c_client *client = FUNC9(dev);
	struct adt7462_data *data = FUNC4(client);
	long temp;

	if (FUNC8(buf, 10, &temp) || !temp ||
	    !FUNC3(data, attr->index))
		return -EINVAL;

	temp = FUNC1(temp);
	temp >>= 8;
	temp = FUNC2(temp, 1, 255);

	FUNC6(&data->lock);
	data->fan_min[attr->index] = temp;
	FUNC5(client, FUNC0(attr->index),
				  temp);
	FUNC7(&data->lock);

	return count;
}