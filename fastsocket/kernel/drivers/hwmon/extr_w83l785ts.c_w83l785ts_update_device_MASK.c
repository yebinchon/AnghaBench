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
struct w83l785ts_data {int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; void** temp; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  W83L785TS_REG_TEMP ; 
 int /*<<< orphan*/  W83L785TS_REG_TEMP_OVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct w83l785ts_data* FUNC1 (struct i2c_client*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 void* FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static struct w83l785ts_data *FUNC7(struct device *dev)
{
	struct i2c_client *client = FUNC5(dev);
	struct w83l785ts_data *data = FUNC1(client);

	FUNC2(&data->update_lock);

	if (!data->valid || FUNC4(jiffies, data->last_updated + HZ * 2)) {
		FUNC0(&client->dev, "Updating w83l785ts data.\n");
		data->temp[0] = FUNC6(client,
				W83L785TS_REG_TEMP, data->temp[0]);
		data->temp[1] = FUNC6(client,
				W83L785TS_REG_TEMP_OVER, data->temp[1]);

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC3(&data->update_lock);

	return data;
}