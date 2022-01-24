#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lm80_data {int /*<<< orphan*/  hwmon_dev; void** fan_min; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct lm80_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct lm80_data*) ; 
 struct lm80_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm80_group ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*) ; 
 void* FUNC8 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
		      const struct i2c_device_id *id)
{
	struct lm80_data *data;
	int err;

	data = FUNC6(sizeof(struct lm80_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC4(client, data);
	FUNC9(&data->update_lock);

	/* Initialize the LM80 chip */
	FUNC7(client);

	/* A few vars need to be filled upon startup */
	data->fan_min[0] = FUNC8(client, FUNC1(1));
	data->fan_min[1] = FUNC8(client, FUNC1(2));

	/* Register sysfs hooks */
	if ((err = FUNC10(&client->dev.kobj, &lm80_group)))
		goto error_free;

	data->hwmon_dev = FUNC3(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC2(data->hwmon_dev);
		goto error_remove;
	}

	return 0;

error_remove:
	FUNC11(&client->dev.kobj, &lm80_group);
error_free:
	FUNC5(data);
exit:
	return err;
}