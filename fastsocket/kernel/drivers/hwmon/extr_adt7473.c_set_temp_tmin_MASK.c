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
struct adt7473_data {long* temp_tmin; int /*<<< orphan*/  lock; int /*<<< orphan*/  temp_twos_complement; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 long FUNC1 (long,int) ; 
 size_t EINVAL ; 
 long FUNC2 (int /*<<< orphan*/ ,long) ; 
 struct adt7473_data* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*,int,long*) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 struct sensor_device_attribute* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
			     struct device_attribute *devattr,
			     const char *buf,
			     size_t count)
{
	struct sensor_device_attribute *attr = FUNC9(devattr);
	struct i2c_client *client = FUNC8(dev);
	struct adt7473_data *data = FUNC3(client);
	long temp;

	if (FUNC7(buf, 10, &temp))
		return -EINVAL;

	temp = FUNC1(temp, 1000);
	temp = FUNC2(data->temp_twos_complement, temp);

	FUNC5(&data->lock);
	data->temp_tmin[attr->index] = temp;
	FUNC4(client, FUNC0(attr->index),
				  temp);
	FUNC6(&data->lock);

	return count;
}