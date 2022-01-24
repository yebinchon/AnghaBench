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
struct w83l786ng_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ ** temp; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** W83L786NG_REG_TEMP ; 
 struct w83l786ng_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
	   const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC6(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	struct i2c_client *client = FUNC5(dev);
	struct w83l786ng_data *data = FUNC1(client);
	s32 val;

	val = FUNC4(buf, NULL, 10);
	FUNC2(&data->update_lock);
	data->temp[nr][index] = FUNC0(val);
	FUNC7(client, W83L786NG_REG_TEMP[nr][index],
			      data->temp[nr][index]);
	FUNC3(&data->update_lock);

        return count;
}