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
typedef  int u32 ;
struct w83792d_data {int* pwm; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/ * W83792D_REG_PWM ; 
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
	int nr = sensor_attr->index;
	struct i2c_client *client = FUNC4(dev);
	struct w83792d_data *data = FUNC0(client);
	u32 val;

	val = FUNC3(buf, NULL, 10);
	if (val != 0 && val != 1)
		return -EINVAL;

	FUNC1(&data->update_lock);
	data->pwm[nr] = FUNC6(client, W83792D_REG_PWM[nr]);
	if (val) {			/* PWM mode */
		data->pwm[nr] |= 0x80;
	} else {			/* DC mode */
		data->pwm[nr] &= 0x7f;
	}
	FUNC7(client, W83792D_REG_PWM[nr], data->pwm[nr]);
	FUNC2(&data->update_lock);

	return count;
}