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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
struct ads7828_data {int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; int /*<<< orphan*/ * adc_input; } ;

/* Variables and functions */
 unsigned int ADS7828_NCH ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct ads7828_data* FUNC3 (struct i2c_client*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC7 (struct device*) ; 

__attribute__((used)) static struct ads7828_data *FUNC8(struct device *dev)
{
	struct i2c_client *client = FUNC7(dev);
	struct ads7828_data *data = FUNC3(client);

	FUNC4(&data->update_lock);

	if (FUNC6(jiffies, data->last_updated + HZ + HZ / 2)
			|| !data->valid) {
		unsigned int ch;
		FUNC2(&client->dev, "Starting ads7828 update\n");

		for (ch = 0; ch < ADS7828_NCH; ch++) {
			u8 cmd = FUNC1(ch);
			data->adc_input[ch] = FUNC0(client, cmd);
		}
		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC5(&data->update_lock);

	return data;
}