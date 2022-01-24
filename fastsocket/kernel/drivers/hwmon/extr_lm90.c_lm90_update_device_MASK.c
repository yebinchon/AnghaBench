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
struct lm90_data {int valid; int* temp8; int temp_hyst; scalar_t__ kind; int* temp11; int alarms; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  LM90_REG_R_LOCAL_CRIT ; 
 int /*<<< orphan*/  LM90_REG_R_LOCAL_HIGH ; 
 int /*<<< orphan*/  LM90_REG_R_LOCAL_LOW ; 
 int /*<<< orphan*/  LM90_REG_R_LOCAL_TEMP ; 
 int /*<<< orphan*/  LM90_REG_R_REMOTE_CRIT ; 
 int /*<<< orphan*/  LM90_REG_R_REMOTE_HIGHH ; 
 int /*<<< orphan*/  LM90_REG_R_REMOTE_HIGHL ; 
 int /*<<< orphan*/  LM90_REG_R_REMOTE_LOWH ; 
 int /*<<< orphan*/  LM90_REG_R_REMOTE_LOWL ; 
 int /*<<< orphan*/  LM90_REG_R_REMOTE_OFFSH ; 
 int /*<<< orphan*/  LM90_REG_R_REMOTE_OFFSL ; 
 int /*<<< orphan*/  LM90_REG_R_REMOTE_TEMPH ; 
 int /*<<< orphan*/  LM90_REG_R_REMOTE_TEMPL ; 
 int /*<<< orphan*/  LM90_REG_R_STATUS ; 
 int /*<<< orphan*/  LM90_REG_R_TCRIT_HYST ; 
 int /*<<< orphan*/  MAX6657_REG_R_LOCAL_TEMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct lm90_data* FUNC1 (struct i2c_client*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ max6646 ; 
 scalar_t__ max6657 ; 
 scalar_t__ max6680 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC7 (struct device*) ; 

__attribute__((used)) static struct lm90_data *FUNC8(struct device *dev)
{
	struct i2c_client *client = FUNC7(dev);
	struct lm90_data *data = FUNC1(client);

	FUNC4(&data->update_lock);

	if (FUNC6(jiffies, data->last_updated + HZ * 2) || !data->valid) {
		u8 h, l;

		FUNC0(&client->dev, "Updating lm90 data.\n");
		FUNC3(client, LM90_REG_R_LOCAL_LOW, &data->temp8[0]);
		FUNC3(client, LM90_REG_R_LOCAL_HIGH, &data->temp8[1]);
		FUNC3(client, LM90_REG_R_LOCAL_CRIT, &data->temp8[2]);
		FUNC3(client, LM90_REG_R_REMOTE_CRIT, &data->temp8[3]);
		FUNC3(client, LM90_REG_R_TCRIT_HYST, &data->temp_hyst);

		if (data->kind == max6657 || data->kind == max6646) {
			FUNC2(client, LM90_REG_R_LOCAL_TEMP,
				    MAX6657_REG_R_LOCAL_TEMPL,
				    &data->temp11[4]);
		} else {
			if (FUNC3(client, LM90_REG_R_LOCAL_TEMP,
					  &h) == 0)
				data->temp11[4] = h << 8;
		}
		FUNC2(client, LM90_REG_R_REMOTE_TEMPH,
			    LM90_REG_R_REMOTE_TEMPL, &data->temp11[0]);

		if (FUNC3(client, LM90_REG_R_REMOTE_LOWH, &h) == 0) {
			data->temp11[1] = h << 8;
			if (data->kind != max6657 && data->kind != max6680
			 && data->kind != max6646
			 && FUNC3(client, LM90_REG_R_REMOTE_LOWL,
					  &l) == 0)
				data->temp11[1] |= l;
		}
		if (FUNC3(client, LM90_REG_R_REMOTE_HIGHH, &h) == 0) {
			data->temp11[2] = h << 8;
			if (data->kind != max6657 && data->kind != max6680
			 && data->kind != max6646
			 && FUNC3(client, LM90_REG_R_REMOTE_HIGHL,
					  &l) == 0)
				data->temp11[2] |= l;
		}

		if (data->kind != max6657 && data->kind != max6646) {
			if (FUNC3(client, LM90_REG_R_REMOTE_OFFSH,
					  &h) == 0
			 && FUNC3(client, LM90_REG_R_REMOTE_OFFSL,
					  &l) == 0)
				data->temp11[3] = (h << 8) | l;
		}
		FUNC3(client, LM90_REG_R_STATUS, &data->alarms);

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC5(&data->update_lock);

	return data;
}