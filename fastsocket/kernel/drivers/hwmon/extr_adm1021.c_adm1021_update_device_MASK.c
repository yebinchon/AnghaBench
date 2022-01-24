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
struct device {int dummy; } ;
struct adm1021_data {int valid; int* temp; int* temp_max; int* temp_min; int alarms; scalar_t__ type; int remote_temp_offset; int remote_temp_offset_prec; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; } ;
typedef  int s8 ;

/* Variables and functions */
 int /*<<< orphan*/  ADM1021_REG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ADM1023_REG_REM_OFFSET ; 
 int /*<<< orphan*/  ADM1023_REG_REM_OFFSET_PREC ; 
 int /*<<< orphan*/  ADM1023_REG_REM_TEMP_PREC ; 
 int /*<<< orphan*/  ADM1023_REG_REM_THYST_PREC ; 
 int /*<<< orphan*/  ADM1023_REG_REM_TOS_PREC ; 
 int HZ ; 
 scalar_t__ adm1023 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct adm1021_data* FUNC4 (struct i2c_client*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC9 (struct device*) ; 

__attribute__((used)) static struct adm1021_data *FUNC10(struct device *dev)
{
	struct i2c_client *client = FUNC9(dev);
	struct adm1021_data *data = FUNC4(client);

	FUNC6(&data->update_lock);

	if (FUNC8(jiffies, data->last_updated + HZ + HZ / 2)
	    || !data->valid) {
		int i;

		FUNC3(&client->dev, "Starting adm1021 update\n");

		for (i = 0; i < 2; i++) {
			data->temp[i] = 1000 *
				(s8) FUNC5(
					client, FUNC0(i));
			data->temp_max[i] = 1000 *
				(s8) FUNC5(
					client, FUNC2(i));
			data->temp_min[i] = 1000 *
				(s8) FUNC5(
					client, FUNC1(i));
		}
		data->alarms = FUNC5(client,
						ADM1021_REG_STATUS) & 0x7c;
		if (data->type == adm1023) {
			/* The ADM1023 provides 3 extra bits of precision for
			 * the remote sensor in extra registers. */
			data->temp[1] += 125 * (FUNC5(
				client, ADM1023_REG_REM_TEMP_PREC) >> 5);
			data->temp_max[1] += 125 * (FUNC5(
				client, ADM1023_REG_REM_TOS_PREC) >> 5);
			data->temp_min[1] += 125 * (FUNC5(
				client, ADM1023_REG_REM_THYST_PREC) >> 5);
			data->remote_temp_offset =
				FUNC5(client,
						ADM1023_REG_REM_OFFSET);
			data->remote_temp_offset_prec =
				FUNC5(client,
						ADM1023_REG_REM_OFFSET_PREC);
		}
		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC7(&data->update_lock);

	return data;
}