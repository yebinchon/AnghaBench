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
struct adt7475_data {int* range; int /*<<< orphan*/  lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adt7475_data* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pwmfreq_table ; 
 scalar_t__ FUNC8 (char const*,int,long*) ; 
 struct i2c_client* FUNC9 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC10 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sattr = FUNC10(attr);
	struct i2c_client *client = FUNC9(dev);
	struct adt7475_data *data = FUNC4(client);
	int out;
	long val;

	if (FUNC8(buf, 10, &val))
		return -EINVAL;

	out = FUNC3(val, pwmfreq_table, FUNC0(pwmfreq_table));

	FUNC6(&data->lock);

	data->range[sattr->index] =
		FUNC2(FUNC1(sattr->index));
	data->range[sattr->index] &= ~7;
	data->range[sattr->index] |= out;

	FUNC5(client, FUNC1(sattr->index),
				  data->range[sattr->index]);

	FUNC7(&data->lock);
	return count;
}