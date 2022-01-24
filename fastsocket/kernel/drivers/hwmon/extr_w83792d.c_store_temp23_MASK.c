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
struct w83792d_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ ** temp_add; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** W83792D_REG_TEMP_ADD ; 
 struct w83792d_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC6 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC7 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sensor_attr = FUNC7(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	struct i2c_client *client = FUNC6(dev);
	struct w83792d_data *data = FUNC2(client);
	s32 val;

	val = FUNC5(buf, NULL, 10);
	FUNC3(&data->update_lock);
	data->temp_add[nr][index] = FUNC0(val);
	data->temp_add[nr][index+1] = FUNC1(val);
	FUNC8(client, W83792D_REG_TEMP_ADD[nr][index],
		data->temp_add[nr][index]);
	FUNC8(client, W83792D_REG_TEMP_ADD[nr][index+1],
		data->temp_add[nr][index+1]);
	FUNC4(&data->update_lock);

	return count;
}