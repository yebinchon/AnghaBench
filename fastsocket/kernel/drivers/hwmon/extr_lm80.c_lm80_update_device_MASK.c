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
struct lm80_data {int valid; int* in; int* in_min; int* in_max; int* fan; int* fan_min; int temp; int temp_os_max; int temp_os_hyst; int temp_hot_max; int temp_hot_hyst; int* fan_div; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; int /*<<< orphan*/  alarms; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  LM80_REG_ALARM1 ; 
 int /*<<< orphan*/  LM80_REG_ALARM2 ; 
 int /*<<< orphan*/  LM80_REG_FAN1 ; 
 int /*<<< orphan*/  LM80_REG_FAN2 ; 
 int /*<<< orphan*/  LM80_REG_FANDIV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  LM80_REG_RES ; 
 int /*<<< orphan*/  LM80_REG_TEMP ; 
 int /*<<< orphan*/  LM80_REG_TEMP_HOT_HYST ; 
 int /*<<< orphan*/  LM80_REG_TEMP_HOT_MAX ; 
 int /*<<< orphan*/  LM80_REG_TEMP_OS_HYST ; 
 int /*<<< orphan*/  LM80_REG_TEMP_OS_MAX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 struct lm80_data* FUNC5 (struct i2c_client*) ; 
 scalar_t__ jiffies ; 
 int FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC10 (struct device*) ; 

__attribute__((used)) static struct lm80_data *FUNC11(struct device *dev)
{
	struct i2c_client *client = FUNC10(dev);
	struct lm80_data *data = FUNC5(client);
	int i;

	FUNC7(&data->update_lock);

	if (FUNC9(jiffies, data->last_updated + 2 * HZ) || !data->valid) {
		FUNC4(&client->dev, "Starting lm80 update\n");
		for (i = 0; i <= 6; i++) {
			data->in[i] =
			    FUNC6(client, FUNC1(i));
			data->in_min[i] =
			    FUNC6(client, FUNC3(i));
			data->in_max[i] =
			    FUNC6(client, FUNC2(i));
		}
		data->fan[0] = FUNC6(client, LM80_REG_FAN1);
		data->fan_min[0] =
		    FUNC6(client, FUNC0(1));
		data->fan[1] = FUNC6(client, LM80_REG_FAN2);
		data->fan_min[1] =
		    FUNC6(client, FUNC0(2));

		data->temp =
		    (FUNC6(client, LM80_REG_TEMP) << 8) |
		    (FUNC6(client, LM80_REG_RES) & 0xf0);
		data->temp_os_max =
		    FUNC6(client, LM80_REG_TEMP_OS_MAX);
		data->temp_os_hyst =
		    FUNC6(client, LM80_REG_TEMP_OS_HYST);
		data->temp_hot_max =
		    FUNC6(client, LM80_REG_TEMP_HOT_MAX);
		data->temp_hot_hyst =
		    FUNC6(client, LM80_REG_TEMP_HOT_HYST);

		i = FUNC6(client, LM80_REG_FANDIV);
		data->fan_div[0] = (i >> 2) & 0x03;
		data->fan_div[1] = (i >> 4) & 0x03;
		data->alarms = FUNC6(client, LM80_REG_ALARM1) +
		    (FUNC6(client, LM80_REG_ALARM2) << 8);
		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC8(&data->update_lock);

	return data;
}