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
typedef  int u32 ;
struct w83792d_data {int* pwmenable; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  W83792D_REG_FAN_CFG ; 
 struct w83792d_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC4 (struct device*) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
			const char *buf, size_t count)
{
	struct sensor_device_attribute *sensor_attr = FUNC5(attr);
	int nr = sensor_attr->index - 1;
	struct i2c_client *client = FUNC4(dev);
	struct w83792d_data *data = FUNC0(client);
	u32 val;
	u8 fan_cfg_tmp, cfg1_tmp, cfg2_tmp, cfg3_tmp, cfg4_tmp;

	val = FUNC3(buf, NULL, 10);
	if (val < 1 || val > 3)
		return -EINVAL;

	FUNC1(&data->update_lock);
	switch (val) {
	case 1:
		data->pwmenable[nr] = 0; /* manual mode */
		break;
	case 2:
		data->pwmenable[nr] = 2; /* Smart Fan II */
		break;
	case 3:
		data->pwmenable[nr] = 1; /* thermal cruise/Smart Fan I */
		break;
	}
	cfg1_tmp = data->pwmenable[0];
	cfg2_tmp = (data->pwmenable[1]) << 2;
	cfg3_tmp = (data->pwmenable[2]) << 4;
	cfg4_tmp = FUNC6(client,W83792D_REG_FAN_CFG) & 0xc0;
	fan_cfg_tmp = ((cfg4_tmp | cfg3_tmp) | cfg2_tmp) | cfg1_tmp;
	FUNC7(client, W83792D_REG_FAN_CFG, fan_cfg_tmp);
	FUNC2(&data->update_lock);

	return count;
}