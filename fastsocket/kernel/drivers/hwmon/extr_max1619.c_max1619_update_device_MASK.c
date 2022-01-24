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
struct max1619_data {int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; void* alarms; void* temp_hyst2; void* temp_crit2; void* temp_low2; void* temp_high2; void* temp_input2; void* temp_input1; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  MAX1619_REG_R_LOCAL_TEMP ; 
 int /*<<< orphan*/  MAX1619_REG_R_REMOTE_CRIT ; 
 int /*<<< orphan*/  MAX1619_REG_R_REMOTE_HIGH ; 
 int /*<<< orphan*/  MAX1619_REG_R_REMOTE_LOW ; 
 int /*<<< orphan*/  MAX1619_REG_R_REMOTE_TEMP ; 
 int /*<<< orphan*/  MAX1619_REG_R_STATUS ; 
 int /*<<< orphan*/  MAX1619_REG_R_TCRIT_HYST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct max1619_data* FUNC1 (struct i2c_client*) ; 
 void* FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC6 (struct device*) ; 

__attribute__((used)) static struct max1619_data *FUNC7(struct device *dev)
{
	struct i2c_client *client = FUNC6(dev);
	struct max1619_data *data = FUNC1(client);

	FUNC3(&data->update_lock);

	if (FUNC5(jiffies, data->last_updated + HZ * 2) || !data->valid) {
		FUNC0(&client->dev, "Updating max1619 data.\n");
		data->temp_input1 = FUNC2(client,
					MAX1619_REG_R_LOCAL_TEMP);
		data->temp_input2 = FUNC2(client,
					MAX1619_REG_R_REMOTE_TEMP);
		data->temp_high2 = FUNC2(client,
					MAX1619_REG_R_REMOTE_HIGH);
		data->temp_low2 = FUNC2(client,
					MAX1619_REG_R_REMOTE_LOW);
		data->temp_crit2 = FUNC2(client,
					MAX1619_REG_R_REMOTE_CRIT);
		data->temp_hyst2 = FUNC2(client,
					MAX1619_REG_R_TCRIT_HYST);
		data->alarms = FUNC2(client,
					MAX1619_REG_R_STATUS);

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC4(&data->update_lock);

	return data;
}