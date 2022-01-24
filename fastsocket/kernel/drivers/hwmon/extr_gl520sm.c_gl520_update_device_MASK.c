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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct gl520_data {int valid; int alarms; int beep_mask; int vid; int* in_input; int* in_min; int* in_max; int* fan_input; int* fan_min; int* temp_input; int* temp_max; int* temp_max_hyst; int* fan_div; int fan_off; int alarm_mask; int beep_enable; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; scalar_t__ two_temps; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GL520_REG_ALARMS ; 
 int /*<<< orphan*/  GL520_REG_BEEP_MASK ; 
 int /*<<< orphan*/  GL520_REG_CONF ; 
 int /*<<< orphan*/  GL520_REG_FAN_DIV ; 
 int /*<<< orphan*/  GL520_REG_FAN_INPUT ; 
 int /*<<< orphan*/  GL520_REG_FAN_MIN ; 
 int /*<<< orphan*/ * GL520_REG_IN_INPUT ; 
 int /*<<< orphan*/ * GL520_REG_IN_LIMIT ; 
 int /*<<< orphan*/ * GL520_REG_IN_MAX ; 
 int /*<<< orphan*/ * GL520_REG_IN_MIN ; 
 int /*<<< orphan*/ * GL520_REG_TEMP_INPUT ; 
 int /*<<< orphan*/ * GL520_REG_TEMP_MAX ; 
 int /*<<< orphan*/ * GL520_REG_TEMP_MAX_HYST ; 
 int /*<<< orphan*/  GL520_REG_VID_INPUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct gl520_data* FUNC2 (struct i2c_client*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC6 (struct device*) ; 

__attribute__((used)) static struct gl520_data *FUNC7(struct device *dev)
{
	struct i2c_client *client = FUNC6(dev);
	struct gl520_data *data = FUNC2(client);
	int val, i;

	FUNC3(&data->update_lock);

	if (FUNC5(jiffies, data->last_updated + 2 * HZ) || !data->valid) {

		FUNC0(&client->dev, "Starting gl520sm update\n");

		data->alarms = FUNC1(client, GL520_REG_ALARMS);
		data->beep_mask = FUNC1(client, GL520_REG_BEEP_MASK);
		data->vid = FUNC1(client, GL520_REG_VID_INPUT) & 0x1f;

		for (i = 0; i < 4; i++) {
			data->in_input[i] = FUNC1(client,
							GL520_REG_IN_INPUT[i]);
			val = FUNC1(client, GL520_REG_IN_LIMIT[i]);
			data->in_min[i] = val & 0xff;
			data->in_max[i] = (val >> 8) & 0xff;
		}

		val = FUNC1(client, GL520_REG_FAN_INPUT);
		data->fan_input[0] = (val >> 8) & 0xff;
		data->fan_input[1] = val & 0xff;

		val = FUNC1(client, GL520_REG_FAN_MIN);
		data->fan_min[0] = (val >> 8) & 0xff;
		data->fan_min[1] = val & 0xff;

		data->temp_input[0] = FUNC1(client,
						GL520_REG_TEMP_INPUT[0]);
		data->temp_max[0] = FUNC1(client,
						GL520_REG_TEMP_MAX[0]);
		data->temp_max_hyst[0] = FUNC1(client,
						GL520_REG_TEMP_MAX_HYST[0]);

		val = FUNC1(client, GL520_REG_FAN_DIV);
		data->fan_div[0] = (val >> 6) & 0x03;
		data->fan_div[1] = (val >> 4) & 0x03;
		data->fan_off = (val >> 2) & 0x01;

		data->alarms &= data->alarm_mask;

		val = FUNC1(client, GL520_REG_CONF);
		data->beep_enable = !((val >> 2) & 1);

		/* Temp1 and Vin4 are the same input */
		if (data->two_temps) {
			data->temp_input[1] = FUNC1(client,
						GL520_REG_TEMP_INPUT[1]);
			data->temp_max[1] = FUNC1(client,
						GL520_REG_TEMP_MAX[1]);
			data->temp_max_hyst[1] = FUNC1(client,
						GL520_REG_TEMP_MAX_HYST[1]);
		} else {
			data->in_input[4] = FUNC1(client,
						GL520_REG_IN_INPUT[4]);
			data->in_min[4] = FUNC1(client,
						GL520_REG_IN_MIN[4]);
			data->in_max[4] = FUNC1(client,
						GL520_REG_IN_MAX[4]);
		}

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC4(&data->update_lock);

	return data;
}