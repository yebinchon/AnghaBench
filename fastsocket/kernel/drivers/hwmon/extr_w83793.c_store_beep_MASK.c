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
typedef  int u8 ;
struct w83793_data {int* beeps; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct w83793_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
	   const char *buf, size_t count)
{
	struct i2c_client *client = FUNC5(dev);
	struct w83793_data *data = FUNC1(client);
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC6(attr);
	int index = sensor_attr->index >> 3;
	int shift = sensor_attr->index & 0x07;
	u8 beep_bit = 1 << shift;
	u8 val;

	val = FUNC4(buf, NULL, 10);
	if (val != 0 && val != 1)
		return -EINVAL;

	FUNC2(&data->update_lock);
	data->beeps[index] = FUNC7(client, FUNC0(index));
	data->beeps[index] &= ~beep_bit;
	data->beeps[index] |= val << shift;
	FUNC8(client, FUNC0(index), data->beeps[index]);
	FUNC3(&data->update_lock);

	return count;
}