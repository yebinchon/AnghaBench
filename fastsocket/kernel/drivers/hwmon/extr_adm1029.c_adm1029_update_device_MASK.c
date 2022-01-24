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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
struct adm1029_data {int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; void** fan_div; void** fan; void** temp; } ;

/* Variables and functions */
 int /*<<< orphan*/ * ADM1029_REG_FAN ; 
 int /*<<< orphan*/ * ADM1029_REG_FAN_DIV ; 
 int /*<<< orphan*/ * ADM1029_REG_TEMP ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct adm1029_data* FUNC2 (struct i2c_client*) ; 
 void* FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC7 (struct device*) ; 

__attribute__((used)) static struct adm1029_data *FUNC8(struct device *dev)
{
	struct i2c_client *client = FUNC7(dev);
	struct adm1029_data *data = FUNC2(client);

	FUNC4(&data->update_lock);
	/*
	 * Use the "cache" Luke, don't recheck values
	 * if there are already checked not a long time later
	 */
	if (FUNC6(jiffies, data->last_updated + HZ * 2)
	 || !data->valid) {
		int nr;

		FUNC1(&client->dev, "Updating adm1029 data\n");

		for (nr = 0; nr < FUNC0(ADM1029_REG_TEMP); nr++) {
			data->temp[nr] =
			    FUNC3(client,
						     ADM1029_REG_TEMP[nr]);
		}
		for (nr = 0; nr < FUNC0(ADM1029_REG_FAN); nr++) {
			data->fan[nr] =
			    FUNC3(client,
						     ADM1029_REG_FAN[nr]);
		}
		for (nr = 0; nr < FUNC0(ADM1029_REG_FAN_DIV); nr++) {
			data->fan_div[nr] =
			    FUNC3(client,
						     ADM1029_REG_FAN_DIV[nr]);
		}

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC5(&data->update_lock);

	return data;
}