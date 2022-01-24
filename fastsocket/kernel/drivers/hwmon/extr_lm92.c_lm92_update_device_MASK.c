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
struct lm92_data {int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; void* temp1_max; void* temp1_min; void* temp1_crit; void* temp1_hyst; void* temp1_input; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  LM92_REG_TEMP ; 
 int /*<<< orphan*/  LM92_REG_TEMP_CRIT ; 
 int /*<<< orphan*/  LM92_REG_TEMP_HIGH ; 
 int /*<<< orphan*/  LM92_REG_TEMP_HYST ; 
 int /*<<< orphan*/  LM92_REG_TEMP_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct lm92_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC7 (struct device*) ; 

__attribute__((used)) static struct lm92_data *FUNC8(struct device *dev)
{
	struct i2c_client *client = FUNC7(dev);
	struct lm92_data *data = FUNC1(client);

	FUNC3(&data->update_lock);

	if (FUNC6(jiffies, data->last_updated + HZ)
	 || !data->valid) {
		FUNC0(&client->dev, "Updating lm92 data\n");
		data->temp1_input = FUNC5(FUNC2(client,
				    LM92_REG_TEMP));
		data->temp1_hyst = FUNC5(FUNC2(client,
				    LM92_REG_TEMP_HYST));
		data->temp1_crit = FUNC5(FUNC2(client,
				    LM92_REG_TEMP_CRIT));
		data->temp1_min = FUNC5(FUNC2(client,
				    LM92_REG_TEMP_LOW));
		data->temp1_max = FUNC5(FUNC2(client,
				    LM92_REG_TEMP_HIGH));

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC4(&data->update_lock);

	return data;
}