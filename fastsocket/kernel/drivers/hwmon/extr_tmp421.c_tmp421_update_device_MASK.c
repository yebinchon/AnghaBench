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
struct tmp421_data {int valid; int config; int channels; int* temp; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  TMP421_CONFIG_REG_1 ; 
 int /*<<< orphan*/ * TMP421_TEMP_LSB ; 
 int /*<<< orphan*/ * TMP421_TEMP_MSB ; 
 struct tmp421_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static struct tmp421_data *FUNC6(struct device *dev)
{
	struct i2c_client *client = FUNC5(dev);
	struct tmp421_data *data = FUNC0(client);
	int i;

	FUNC2(&data->update_lock);

	if (FUNC4(jiffies, data->last_updated + 2 * HZ) || !data->valid) {
		data->config = FUNC1(client,
			TMP421_CONFIG_REG_1);

		for (i = 0; i < data->channels; i++) {
			data->temp[i] = FUNC1(client,
				TMP421_TEMP_MSB[i]) << 8;
			data->temp[i] |= FUNC1(client,
				TMP421_TEMP_LSB[i]);
		}
		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC3(&data->update_lock);

	return data;
}