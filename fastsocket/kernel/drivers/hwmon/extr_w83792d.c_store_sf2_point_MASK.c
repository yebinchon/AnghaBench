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
typedef  int /*<<< orphan*/  u32 ;
struct w83792d_data {int** sf2_points; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ ** W83792D_REG_POINTS ; 
 struct w83792d_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sensor_attr = FUNC6(attr);
	int nr = sensor_attr->nr - 1;
	int index = sensor_attr->index - 1;
	struct i2c_client *client = FUNC5(dev);
	struct w83792d_data *data = FUNC1(client);
	u32 val;
	u8 mask_tmp = 0;

	val = FUNC4(buf, NULL, 10);
	FUNC2(&data->update_lock);
	data->sf2_points[index][nr] = FUNC0(val, 0, 127);
	mask_tmp = FUNC7(client,
					W83792D_REG_POINTS[index][nr]) & 0x80;
	FUNC8(client, W83792D_REG_POINTS[index][nr],
		mask_tmp|data->sf2_points[index][nr]);
	FUNC3(&data->update_lock);

	return count;
}