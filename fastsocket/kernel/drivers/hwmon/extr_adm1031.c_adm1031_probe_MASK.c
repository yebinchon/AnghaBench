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
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adm1031_data {scalar_t__ chip_type; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/ * chan_select_table; int /*<<< orphan*/  update_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ adm1030 ; 
 scalar_t__ adm1031 ; 
 int /*<<< orphan*/  adm1031_group ; 
 int /*<<< orphan*/  adm1031_group_opt ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  auto_channel_select_table_adm1030 ; 
 int /*<<< orphan*/  auto_channel_select_table_adm1031 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct adm1031_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct adm1031_data*) ; 
 struct adm1031_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct adm1031_data *data;
	int err;

	data = FUNC6(sizeof(struct adm1031_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC4(client, data);
	data->chip_type = id->driver_data;
	FUNC7(&data->update_lock);

	if (data->chip_type == adm1030)
		data->chan_select_table = &auto_channel_select_table_adm1030;
	else
		data->chan_select_table = &auto_channel_select_table_adm1031;

	/* Initialize the ADM1031 chip */
	FUNC2(client);

	/* Register sysfs hooks */
	if ((err = FUNC8(&client->dev.kobj, &adm1031_group)))
		goto exit_free;

	if (data->chip_type == adm1031) {
		if ((err = FUNC8(&client->dev.kobj,
						&adm1031_group_opt)))
			goto exit_remove;
	}

	data->hwmon_dev = FUNC3(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove;
	}

	return 0;

exit_remove:
	FUNC9(&client->dev.kobj, &adm1031_group);
	FUNC9(&client->dev.kobj, &adm1031_group_opt);
exit_free:
	FUNC5(data);
exit:
	return err;
}