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
struct sensor_device_attribute {int /*<<< orphan*/  index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 struct adt7462_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,struct adt7462_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char const*,int,long*) ; 
 struct i2c_client* FUNC3 (struct device*) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			    struct device_attribute *devattr,
			    const char *buf,
			    size_t count)
{
	struct sensor_device_attribute *attr = FUNC4(devattr);
	struct i2c_client *client = FUNC3(dev);
	struct adt7462_data *data = FUNC0(client);
	long temp;

	if (FUNC2(buf, 10, &temp))
		return -EINVAL;

	switch (temp) {
	case 0: /* off */
		FUNC1(client, data, attr->index, 4);
		return count;
	case 1: /* manual */
		FUNC1(client, data, attr->index, 7);
		return count;
	default:
		return -EINVAL;
	}
}