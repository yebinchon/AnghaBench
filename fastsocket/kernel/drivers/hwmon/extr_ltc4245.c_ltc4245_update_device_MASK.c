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
struct ltc4245_data {int valid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; scalar_t__* vregs; scalar_t__* cregs; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct ltc4245_data* FUNC2 (struct i2c_client*) ; 
 scalar_t__ FUNC3 (struct i2c_client*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC7 (struct device*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct ltc4245_data *FUNC9(struct device *dev)
{
	struct i2c_client *client = FUNC7(dev);
	struct ltc4245_data *data = FUNC2(client);
	s32 val;
	int i;

	FUNC4(&data->update_lock);

	if (FUNC6(jiffies, data->last_updated + HZ) || !data->valid) {

		FUNC1(&client->dev, "Starting ltc4245 update\n");

		/* Read control registers -- 0x00 to 0x07 */
		for (i = 0; i < FUNC0(data->cregs); i++) {
			val = FUNC3(client, i);
			if (FUNC8(val < 0))
				data->cregs[i] = 0;
			else
				data->cregs[i] = val;
		}

		/* Read voltage registers -- 0x10 to 0x1f */
		for (i = 0; i < FUNC0(data->vregs); i++) {
			val = FUNC3(client, i+0x10);
			if (FUNC8(val < 0))
				data->vregs[i] = 0;
			else
				data->vregs[i] = val;
		}

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC5(&data->update_lock);

	return data;
}