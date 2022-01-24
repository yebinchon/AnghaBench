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
struct w83793_data {int pwm_default; int pwm_uptime; int pwm_downtime; int temp_critical; int /*<<< orphan*/  update_lock; } ;
struct sensor_device_attribute_2 {int nr; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int SETUP_PWM_DEFAULT ; 
 int SETUP_PWM_DOWNTIME ; 
 int SETUP_PWM_UPTIME ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  W83793_REG_PWM_DEFAULT ; 
 int /*<<< orphan*/  W83793_REG_PWM_DOWNTIME ; 
 int /*<<< orphan*/  W83793_REG_PWM_UPTIME ; 
 int /*<<< orphan*/  W83793_REG_TEMP_CRITICAL ; 
 struct w83793_data* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC9 (struct device_attribute*) ; 
 int FUNC10 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC12(struct device *dev, struct device_attribute *attr,
	       const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *sensor_attr =
	    FUNC9(attr);
	int nr = sensor_attr->nr;
	struct i2c_client *client = FUNC8(dev);
	struct w83793_data *data = FUNC3(client);

	FUNC4(&data->update_lock);
	if (SETUP_PWM_DEFAULT == nr) {
		data->pwm_default =
		    FUNC10(client, W83793_REG_PWM_DEFAULT) & 0xc0;
		data->pwm_default |= FUNC0(FUNC7(buf, NULL,
								  10),
						   0, 0xff) >> 2;
		FUNC11(client, W83793_REG_PWM_DEFAULT,
							data->pwm_default);
	} else if (SETUP_PWM_UPTIME == nr) {
		data->pwm_uptime = FUNC2(FUNC7(buf, NULL, 10));
		data->pwm_uptime += data->pwm_uptime == 0 ? 1 : 0;
		FUNC11(client, W83793_REG_PWM_UPTIME,
							data->pwm_uptime);
	} else if (SETUP_PWM_DOWNTIME == nr) {
		data->pwm_downtime = FUNC2(FUNC7(buf, NULL, 10));
		data->pwm_downtime += data->pwm_downtime == 0 ? 1 : 0;
		FUNC11(client, W83793_REG_PWM_DOWNTIME,
							data->pwm_downtime);
	} else {		/* SETUP_TEMP_CRITICAL */
		data->temp_critical =
		    FUNC10(client, W83793_REG_TEMP_CRITICAL) & 0x80;
		data->temp_critical |= FUNC1(FUNC6(buf, NULL, 10),
						   0, 0x7f);
		FUNC11(client, W83793_REG_TEMP_CRITICAL,
							data->temp_critical);
	}

	FUNC5(&data->update_lock);
	return count;
}