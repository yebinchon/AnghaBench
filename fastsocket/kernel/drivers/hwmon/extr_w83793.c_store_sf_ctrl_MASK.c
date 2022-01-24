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
struct w83793_data {int* temp_fan_map; int pwm_enable; int* temp_cruise; int* tolerance; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int TEMP_CRUISE ; 
 int TEMP_FAN_MAP ; 
 int TEMP_PWM_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  W83793_REG_PWM_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct w83793_data* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC9 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC10 (struct device_attribute*) ; 
 void* FUNC11 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC13(struct device *dev, struct device_attribute *attr,
	      const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC10(attr);
	int nr = sensor_attr->nr;
	int index = sensor_attr->index;
	struct i2c_client *client = FUNC9(dev);
	struct w83793_data *data = FUNC4(client);
	u32 val;

	FUNC5(&data->update_lock);
	if (TEMP_FAN_MAP == nr) {
		val = FUNC8(buf, NULL, 10) & 0xff;
		FUNC12(client, FUNC2(index), val);
		data->temp_fan_map[index] = val;
	} else if (TEMP_PWM_ENABLE == nr) {
		val = FUNC8(buf, NULL, 10);
		if (2 == val || 3 == val) {
			data->pwm_enable =
			    FUNC11(client, W83793_REG_PWM_ENABLE);
			if (val - 2)
				data->pwm_enable |= 1 << index;
			else
				data->pwm_enable &= ~(1 << index);
			FUNC12(client, W83793_REG_PWM_ENABLE,
							data->pwm_enable);
		} else {
			FUNC6(&data->update_lock);
			return -EINVAL;
		}
	} else if (TEMP_CRUISE == nr) {
		data->temp_cruise[index] =
		    FUNC11(client, FUNC1(index));
		val = FUNC0(FUNC7(buf, NULL, 10), 0, 0x7f);
		data->temp_cruise[index] &= 0x80;
		data->temp_cruise[index] |= val;

		FUNC12(client, FUNC1(index),
						data->temp_cruise[index]);
	} else {		/* TEMP_TOLERANCE */
		int i = index >> 1;
		u8 shift = (index & 0x01) ? 4 : 0;
		data->tolerance[i] =
		    FUNC11(client, FUNC3(i));

		val = FUNC0(FUNC7(buf, NULL, 10), 0, 0x0f);
		data->tolerance[i] &= ~(0x0f << shift);
		data->tolerance[i] |= val << shift;
		FUNC12(client, FUNC3(i),
							data->tolerance[i]);
	}

	FUNC6(&data->update_lock);
	return count;
}