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
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {unsigned long sensors_last_updated; int sensors_valid; unsigned long limits_last_updated; int limits_valid; int /*<<< orphan*/  lock; void* cfg2; void* pwm_max; void** pwm_cfg; void** pwm_trange; void** pwm_tmin; void** pwm_min; void** volt_min; void** volt_max; void** fan_min; void** temp_max; void** temp_min; void** alarms; void** voltages; void** pin_cfg; void** pwm; void* fan_enabled; int /*<<< orphan*/ * fan; void** temp; void** temp_frac; } ;

/* Variables and functions */
 int ADT7462_FAN_COUNT ; 
 int ADT7462_PIN_CFG_REG_COUNT ; 
 int ADT7462_PWM_COUNT ; 
 int ADT7462_REG_ALARM1 ; 
 int ADT7462_REG_ALARM2 ; 
 int ADT7462_REG_ALARM3 ; 
 int ADT7462_REG_ALARM4 ; 
 int ADT7462_REG_CFG2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ADT7462_REG_FAN_ENABLE ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int ADT7462_REG_PWM_MAX ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (struct adt7462_data*,int) ; 
 int FUNC9 (struct adt7462_data*,int) ; 
 int FUNC10 (struct adt7462_data*,int) ; 
 int ADT7462_TEMP_COUNT ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int ADT7462_VOLT_COUNT ; 
 scalar_t__ LIMIT_REFRESH_INTERVAL ; 
 scalar_t__ SENSOR_REFRESH_INTERVAL ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct adt7462_data* FUNC15 (struct i2c_client*) ; 
 void* FUNC16 (struct i2c_client*,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (unsigned long,scalar_t__) ; 
 struct i2c_client* FUNC20 (struct device*) ; 

__attribute__((used)) static struct adt7462_data *FUNC21(struct device *dev)
{
	struct i2c_client *client = FUNC20(dev);
	struct adt7462_data *data = FUNC15(client);
	unsigned long local_jiffies = jiffies;
	int i;

	FUNC17(&data->lock);
	if (FUNC19(local_jiffies, data->sensors_last_updated +
		SENSOR_REFRESH_INTERVAL)
		&& data->sensors_valid)
		goto no_sensor_update;

	for (i = 0; i < ADT7462_TEMP_COUNT; i++) {
		/*
		 * Reading the fractional register locks the integral
		 * register until both have been read.
		 */
		data->temp_frac[i] = FUNC16(client,
						FUNC13(i));
		data->temp[i] = FUNC16(client,
						FUNC13(i) + 1);
	}

	for (i = 0; i < ADT7462_FAN_COUNT; i++)
		data->fan[i] = FUNC14(client,
						FUNC0(i));

	data->fan_enabled = FUNC16(client,
					ADT7462_REG_FAN_ENABLE);

	for (i = 0; i < ADT7462_PWM_COUNT; i++)
		data->pwm[i] = FUNC16(client,
						FUNC3(i));

	for (i = 0; i < ADT7462_PIN_CFG_REG_COUNT; i++)
		data->pin_cfg[i] = FUNC16(client,
				FUNC2(i));

	for (i = 0; i < ADT7462_VOLT_COUNT; i++) {
		int reg = FUNC8(data, i);
		if (!reg)
			data->voltages[i] = 0;
		else
			data->voltages[i] = FUNC16(client,
								     reg);
	}

	data->alarms[0] = FUNC16(client, ADT7462_REG_ALARM1);
	data->alarms[1] = FUNC16(client, ADT7462_REG_ALARM2);
	data->alarms[2] = FUNC16(client, ADT7462_REG_ALARM3);
	data->alarms[3] = FUNC16(client, ADT7462_REG_ALARM4);

	data->sensors_last_updated = local_jiffies;
	data->sensors_valid = 1;

no_sensor_update:
	if (FUNC19(local_jiffies, data->limits_last_updated +
		LIMIT_REFRESH_INTERVAL)
		&& data->limits_valid)
		goto out;

	for (i = 0; i < ADT7462_TEMP_COUNT; i++) {
		data->temp_min[i] = FUNC16(client,
						FUNC12(i));
		data->temp_max[i] = FUNC16(client,
						FUNC11(i));
	}

	for (i = 0; i < ADT7462_FAN_COUNT; i++)
		data->fan_min[i] = FUNC16(client,
						FUNC1(i));

	for (i = 0; i < ADT7462_VOLT_COUNT; i++) {
		int reg = FUNC9(data, i);
		data->volt_max[i] =
			(reg ? FUNC16(client, reg) : 0);

		reg = FUNC10(data, i);
		data->volt_min[i] =
			(reg ? FUNC16(client, reg) : 0);
	}

	for (i = 0; i < ADT7462_PWM_COUNT; i++) {
		data->pwm_min[i] = FUNC16(client,
						FUNC5(i));
		data->pwm_tmin[i] = FUNC16(client,
						FUNC6(i));
		data->pwm_trange[i] = FUNC16(client,
						FUNC7(i));
		data->pwm_cfg[i] = FUNC16(client,
						FUNC4(i));
	}

	data->pwm_max = FUNC16(client, ADT7462_REG_PWM_MAX);

	data->cfg2 = FUNC16(client, ADT7462_REG_CFG2);

	data->limits_last_updated = local_jiffies;
	data->limits_valid = 1;

out:
	FUNC18(&data->lock);
	return data;
}