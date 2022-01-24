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
struct g760a_data {int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; void* fan_sta; void* act_cnt; void* set_cnt; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  G760A_REG_ACT_CNT ; 
 int /*<<< orphan*/  G760A_REG_FAN_STA ; 
 int /*<<< orphan*/  G760A_REG_SET_CNT ; 
 scalar_t__ G760A_UPDATE_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct g760a_data* FUNC2 (struct i2c_client*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC6 (struct device*) ; 

__attribute__((used)) static struct g760a_data *FUNC7(struct device *dev)
{
	struct i2c_client *client = FUNC6(dev);
	struct g760a_data *data = FUNC2(client);

	FUNC3(&data->update_lock);

	if (FUNC5(jiffies, data->last_updated + G760A_UPDATE_INTERVAL)
	    || !data->valid) {
		FUNC0(&client->dev, "Starting g760a update\n");

		data->set_cnt = FUNC1(client, G760A_REG_SET_CNT);
		data->act_cnt = FUNC1(client, G760A_REG_ACT_CNT);
		data->fan_sta = FUNC1(client, G760A_REG_FAN_STA);

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC4(&data->update_lock);

	return data;
}