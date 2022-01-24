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
struct sensor_device_attribute_2 {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int /*<<< orphan*/  lock; int /*<<< orphan*/ * pwmchan; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,size_t) ; 
 int FUNC1 (struct i2c_client*,size_t,long,int /*<<< orphan*/ ) ; 
 struct adt7475_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,int,long*) ; 
 struct i2c_client* FUNC6 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC7 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sattr = FUNC7(attr);
	struct i2c_client *client = FUNC6(dev);
	struct adt7475_data *data = FUNC2(client);
	int r;
	long val;

	if (FUNC5(buf, 10, &val))
		return -EINVAL;

	FUNC3(&data->lock);
	/* Read Modify Write PWM values */
	FUNC0(client, sattr->index);
	r = FUNC1(client, sattr->index, val, data->pwmchan[sattr->index]);
	if (r)
		count = r;
	FUNC4(&data->lock);

	return count;
}