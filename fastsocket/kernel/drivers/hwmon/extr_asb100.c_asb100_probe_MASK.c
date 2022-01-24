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
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct asb100_data {int /*<<< orphan*/ * lm75; int /*<<< orphan*/  hwmon_dev; void** fan_min; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  asb100_group ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 
 void* FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct asb100_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct asb100_data*) ; 
 struct asb100_data* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int err;
	struct asb100_data *data;

	data = FUNC10(sizeof(struct asb100_data), GFP_KERNEL);
	if (!data) {
		FUNC12("asb100.o: probe failed, kzalloc failed!\n");
		err = -ENOMEM;
		goto ERROR0;
	}

	FUNC7(client, data);
	FUNC11(&data->lock);
	FUNC11(&data->update_lock);

	/* Attach secondary lm75 clients */
	err = FUNC3(client);
	if (err)
		goto ERROR1;

	/* Initialize the chip */
	FUNC4(client);

	/* A few vars need to be filled upon startup */
	data->fan_min[0] = FUNC5(client, FUNC0(0));
	data->fan_min[1] = FUNC5(client, FUNC0(1));
	data->fan_min[2] = FUNC5(client, FUNC0(2));

	/* Register sysfs hooks */
	if ((err = FUNC13(&client->dev.kobj, &asb100_group)))
		goto ERROR3;

	data->hwmon_dev = FUNC6(&client->dev);
	if (FUNC1(data->hwmon_dev)) {
		err = FUNC2(data->hwmon_dev);
		goto ERROR4;
	}

	return 0;

ERROR4:
	FUNC14(&client->dev.kobj, &asb100_group);
ERROR3:
	FUNC8(data->lm75[1]);
	FUNC8(data->lm75[0]);
ERROR1:
	FUNC9(data);
ERROR0:
	return err;
}