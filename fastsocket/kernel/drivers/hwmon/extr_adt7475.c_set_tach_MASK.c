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
struct adt7475_data {int /*<<< orphan*/  lock; int /*<<< orphan*/ ** tach; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t MIN ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adt7475_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (char const*,int,unsigned long*) ; 
 struct i2c_client* FUNC7 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{

	struct sensor_device_attribute_2 *sattr = FUNC8(attr);
	struct i2c_client *client = FUNC7(dev);
	struct adt7475_data *data = FUNC2(client);
	unsigned long val;

	if (FUNC6(buf, 10, &val))
		return -EINVAL;

	FUNC3(&data->lock);

	data->tach[MIN][sattr->index] = FUNC5(val);

	FUNC1(client, FUNC0(sattr->index),
			   data->tach[MIN][sattr->index]);

	FUNC4(&data->lock);
	return count;
}