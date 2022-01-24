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
struct i2c_client {int dummy; } ;
struct f75375_data {int valid; int /*<<< orphan*/  update_lock; void* last_updated; void** in; void** fan; void** temp; void* last_limits; void* fan_timer; void** in_min; void** in_max; void** pwm; void** fan_exp; void** fan_min; void** fan_full; void** temp_max_hyst; void** temp_high; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  F75375_REG_FAN_TIMER ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int HZ ; 
 void* FUNC11 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 void* FUNC12 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct f75375_data* FUNC13 (struct i2c_client*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (void*,void*) ; 
 struct i2c_client* FUNC17 (struct device*) ; 

__attribute__((used)) static struct f75375_data *FUNC18(struct device *dev)
{
	struct i2c_client *client = FUNC17(dev);
	struct f75375_data *data = FUNC13(client);
	int nr;

	FUNC14(&data->update_lock);

	/* Limit registers cache is refreshed after 60 seconds */
	if (FUNC16(jiffies, data->last_limits + 60 * HZ)
		|| !data->valid) {
		for (nr = 0; nr < 2; nr++) {
			data->temp_high[nr] =
				FUNC12(client, FUNC6(nr));
			data->temp_max_hyst[nr] =
				FUNC12(client, FUNC7(nr));
			data->fan_full[nr] =
				FUNC11(client, FUNC2(nr));
			data->fan_min[nr] =
				FUNC11(client, FUNC3(nr));
			data->fan_exp[nr] =
				FUNC11(client, FUNC1(nr));
			data->pwm[nr] =	FUNC12(client,
				FUNC4(nr));

		}
		for (nr = 0; nr < 4; nr++) {
			data->in_max[nr] =
				FUNC12(client, FUNC9(nr));
			data->in_min[nr] =
				FUNC12(client, FUNC10(nr));
		}
		data->fan_timer = FUNC12(client, F75375_REG_FAN_TIMER);
		data->last_limits = jiffies;
	}

	/* Measurement registers cache is refreshed after 2 second */
	if (FUNC16(jiffies, data->last_updated + 2 * HZ)
		|| !data->valid) {
		for (nr = 0; nr < 2; nr++) {
			data->temp[nr] =
				FUNC12(client, FUNC5(nr));
			data->fan[nr] =
				FUNC11(client, FUNC0(nr));
		}
		for (nr = 0; nr < 4; nr++)
			data->in[nr] =
				FUNC12(client, FUNC8(nr));

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC15(&data->update_lock);
	return data;
}