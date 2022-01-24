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
struct adt7470_data {long* fan_max; int /*<<< orphan*/  lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 size_t EINVAL ; 
 long FUNC1 (long) ; 
 long FUNC2 (long,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 struct adt7470_data* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*,int,long*) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 struct sensor_device_attribute* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
			   struct device_attribute *devattr,
			   const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC9(devattr);
	struct i2c_client *client = FUNC8(dev);
	struct adt7470_data *data = FUNC4(client);
	long temp;

	if (FUNC7(buf, 10, &temp) || !temp)
		return -EINVAL;

	temp = FUNC1(temp);
	temp = FUNC2(temp, 1, 65534);

	FUNC5(&data->lock);
	data->fan_max[attr->index] = temp;
	FUNC3(client, FUNC0(attr->index), temp);
	FUNC6(&data->lock);

	return count;
}