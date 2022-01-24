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
struct ad7418_data {int /*<<< orphan*/  lock; int /*<<< orphan*/ * temp; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/ * AD7418_REG_TEMP ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ad7418_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC6 (struct device*) ; 
 struct sensor_device_attribute* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *devattr,
			const char *buf, size_t count)
{
	struct sensor_device_attribute *attr = FUNC7(devattr);
	struct i2c_client *client = FUNC6(dev);
	struct ad7418_data *data = FUNC2(client);
	long temp = FUNC5(buf, NULL, 10);

	FUNC3(&data->lock);
	data->temp[attr->index] = FUNC0(temp);
	FUNC1(client, AD7418_REG_TEMP[attr->index], data->temp[attr->index]);
	FUNC4(&data->lock);
	return count;
}