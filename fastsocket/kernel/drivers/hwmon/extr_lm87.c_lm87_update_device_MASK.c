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
struct lm87_data {int valid; int channel; int* in; int* in_min; int* in_max; int* fan; int* fan_min; int* temp; int* temp_high; int* temp_low; int* fan_div; int vid; int alarms; int aout; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; void* temp_crit_ext; void* temp_crit_int; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CHAN_TEMP3 ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  LM87_REG_ALARMS1 ; 
 int /*<<< orphan*/  LM87_REG_ALARMS2 ; 
 int /*<<< orphan*/  LM87_REG_AOUT ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/ * LM87_REG_TEMP ; 
 int /*<<< orphan*/ * LM87_REG_TEMP_HIGH ; 
 int /*<<< orphan*/  LM87_REG_TEMP_HW_EXT ; 
 int /*<<< orphan*/  LM87_REG_TEMP_HW_EXT_LOCK ; 
 int /*<<< orphan*/  LM87_REG_TEMP_HW_INT ; 
 int /*<<< orphan*/  LM87_REG_TEMP_HW_INT_LOCK ; 
 int /*<<< orphan*/ * LM87_REG_TEMP_LOW ; 
 int /*<<< orphan*/  LM87_REG_VID4 ; 
 int /*<<< orphan*/  LM87_REG_VID_FAN_DIV ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 struct lm87_data* FUNC10 (struct i2c_client*) ; 
 scalar_t__ jiffies ; 
 int FUNC11 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 void* FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC16 (struct device*) ; 

__attribute__((used)) static struct lm87_data *FUNC17(struct device *dev)
{
	struct i2c_client *client = FUNC16(dev);
	struct lm87_data *data = FUNC10(client);

	FUNC13(&data->update_lock);

	if (FUNC15(jiffies, data->last_updated + HZ) || !data->valid) {
		int i, j;

		FUNC9(&client->dev, "Updating data.\n");

		i = (data->channel & CHAN_TEMP3) ? 1 : 0;
		j = (data->channel & CHAN_TEMP3) ? 5 : 6;
		for (; i < j; i++) {
			data->in[i] = FUNC11(client,
				      FUNC6(i));
			data->in_min[i] = FUNC11(client,
					  FUNC8(i));
			data->in_max[i] = FUNC11(client,
					  FUNC7(i));
		}

		for (i = 0; i < 2; i++) {
			if (data->channel & FUNC0(i)) {
				data->in[6+i] = FUNC11(client,
						FUNC1(i));
				data->in_max[6+i] = FUNC11(client,
						    FUNC2(i));
				data->in_min[6+i] = FUNC11(client,
						    FUNC3(i));

			} else {
				data->fan[i] = FUNC11(client,
					       FUNC4(i));
				data->fan_min[i] = FUNC11(client,
						   FUNC5(i));
			}
		}

		j = (data->channel & CHAN_TEMP3) ? 3 : 2;
		for (i = 0 ; i < j; i++) {
			data->temp[i] = FUNC11(client,
					LM87_REG_TEMP[i]);
			data->temp_high[i] = FUNC11(client,
					     LM87_REG_TEMP_HIGH[i]);
			data->temp_low[i] = FUNC11(client,
					    LM87_REG_TEMP_LOW[i]);
		}

		i = FUNC11(client, LM87_REG_TEMP_HW_INT_LOCK);
		j = FUNC11(client, LM87_REG_TEMP_HW_INT);
		data->temp_crit_int = FUNC12(i, j);

		i = FUNC11(client, LM87_REG_TEMP_HW_EXT_LOCK);
		j = FUNC11(client, LM87_REG_TEMP_HW_EXT);
		data->temp_crit_ext = FUNC12(i, j);

		i = FUNC11(client, LM87_REG_VID_FAN_DIV);
		data->fan_div[0] = (i >> 4) & 0x03;
		data->fan_div[1] = (i >> 6) & 0x03;
		data->vid = (i & 0x0F)
			  | (FUNC11(client, LM87_REG_VID4) & 0x01)
			     << 4;

		data->alarms = FUNC11(client, LM87_REG_ALARMS1)
			     | (FUNC11(client, LM87_REG_ALARMS2)
				<< 8);
		data->aout = FUNC11(client, LM87_REG_AOUT);

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC14(&data->update_lock);

	return data;
}