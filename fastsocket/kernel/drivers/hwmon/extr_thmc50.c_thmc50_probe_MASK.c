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
struct thmc50_data {scalar_t__ has_temp3; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  type; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct thmc50_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct thmc50_data*) ; 
 struct thmc50_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  temp3_group ; 
 int /*<<< orphan*/  thmc50_group ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct thmc50_data *data;
	int err;

	data = FUNC5(sizeof(struct thmc50_data), GFP_KERNEL);
	if (!data) {
		FUNC7("thmc50: detect failed, kzalloc failed!\n");
		err = -ENOMEM;
		goto exit;
	}

	FUNC3(client, data);
	data->type = id->driver_data;
	FUNC6(&data->update_lock);

	FUNC10(client);

	/* Register sysfs hooks */
	if ((err = FUNC8(&client->dev.kobj, &thmc50_group)))
		goto exit_free;

	/* Register ADM1022 sysfs hooks */
	if (data->has_temp3)
		if ((err = FUNC8(&client->dev.kobj,
					      &temp3_group)))
			goto exit_remove_sysfs_thmc50;

	/* Register a new directory entry with module sensors */
	data->hwmon_dev = FUNC2(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove_sysfs;
	}

	return 0;

exit_remove_sysfs:
	if (data->has_temp3)
		FUNC9(&client->dev.kobj, &temp3_group);
exit_remove_sysfs_thmc50:
	FUNC9(&client->dev.kobj, &thmc50_group);
exit_free:
	FUNC4(data);
exit:
	return err;
}