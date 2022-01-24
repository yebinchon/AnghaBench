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
struct lm77_data {int valid; int alarms; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; void* temp_max; void* temp_min; void* temp_crit; void* temp_hyst; void* temp_input; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  LM77_REG_TEMP ; 
 int /*<<< orphan*/  LM77_REG_TEMP_CRIT ; 
 int /*<<< orphan*/  LM77_REG_TEMP_HYST ; 
 int /*<<< orphan*/  LM77_REG_TEMP_MAX ; 
 int /*<<< orphan*/  LM77_REG_TEMP_MIN ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct lm77_data* FUNC2 (struct i2c_client*) ; 
 scalar_t__ jiffies ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC7 (struct device*) ; 

__attribute__((used)) static struct lm77_data *FUNC8(struct device *dev)
{
	struct i2c_client *client = FUNC7(dev);
	struct lm77_data *data = FUNC2(client);

	FUNC4(&data->update_lock);

	if (FUNC6(jiffies, data->last_updated + HZ + HZ / 2)
	    || !data->valid) {
		FUNC1(&client->dev, "Starting lm77 update\n");
		data->temp_input =
			FUNC0(FUNC3(client,
							   LM77_REG_TEMP));
		data->temp_hyst =
			FUNC0(FUNC3(client,
							   LM77_REG_TEMP_HYST));
		data->temp_crit =
			FUNC0(FUNC3(client,
							   LM77_REG_TEMP_CRIT));
		data->temp_min =
			FUNC0(FUNC3(client,
							   LM77_REG_TEMP_MIN));
		data->temp_max =
			FUNC0(FUNC3(client,
							   LM77_REG_TEMP_MAX));
		data->alarms =
			FUNC3(client, LM77_REG_TEMP) & 0x0007;
		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC5(&data->update_lock);

	return data;
}