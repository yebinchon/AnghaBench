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
struct tmp401_data {int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; void* temp_crit_hyst; void* config; void* status; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  TMP401_CONFIG_READ ; 
 int /*<<< orphan*/  TMP401_STATUS ; 
 int /*<<< orphan*/  TMP401_TEMP_CRIT_HYST ; 
 struct tmp401_data* FUNC0 (struct i2c_client*) ; 
 void* FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct tmp401_data*) ; 
 struct i2c_client* FUNC6 (struct device*) ; 

__attribute__((used)) static struct tmp401_data *FUNC7(struct device *dev)
{
	struct i2c_client *client = FUNC6(dev);
	struct tmp401_data *data = FUNC0(client);

	FUNC2(&data->update_lock);

	if (FUNC4(jiffies, data->last_updated + HZ) || !data->valid) {
		data->status = FUNC1(client, TMP401_STATUS);
		data->config = FUNC1(client,
						TMP401_CONFIG_READ);
		FUNC5(client, data);

		data->temp_crit_hyst = FUNC1(client,
						TMP401_TEMP_CRIT_HYST);

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC3(&data->update_lock);

	return data;
}