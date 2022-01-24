#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_3__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  attrs; } ;
struct adt7470_data {int num_temp_sensors; TYPE_1__ attrs; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  auto_update; int /*<<< orphan*/  auto_update_stop; int /*<<< orphan*/  lock; int /*<<< orphan*/  auto_update_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_UPDATE_INTERVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adt7470_attr ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  adt7470_update_thread ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct adt7470_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct adt7470_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct adt7470_data* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct adt7470_data *data;
	int err;

	data = FUNC11(sizeof(struct adt7470_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	data->num_temp_sensors = -1;
	data->auto_update_interval = AUTO_UPDATE_INTERVAL;

	FUNC7(client, data);
	FUNC12(&data->lock);

	FUNC3(&client->dev, "%s chip found\n", client->name);

	/* Initialize the ADT7470 chip */
	FUNC2(client);

	/* Register sysfs hooks */
	data->attrs.attrs = adt7470_attr;
	if ((err = FUNC13(&client->dev.kobj, &data->attrs)))
		goto exit_free;

	data->hwmon_dev = FUNC5(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove;
	}

	FUNC8(&data->auto_update_stop);
	data->auto_update = FUNC10(adt7470_update_thread, client,
					FUNC4(data->hwmon_dev));
	if (FUNC0(data->auto_update))
		goto exit_unregister;

	return 0;

exit_unregister:
	FUNC6(data->hwmon_dev);
exit_remove:
	FUNC14(&client->dev.kobj, &data->attrs);
exit_free:
	FUNC9(data);
exit:
	return err;
}