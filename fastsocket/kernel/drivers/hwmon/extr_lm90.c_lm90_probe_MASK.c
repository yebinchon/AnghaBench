#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct lm90_data {scalar_t__ kind; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  parent; } ;
struct i2c_client {int flags; TYPE_2__ dev; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev_attr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_CLIENT_PEC ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ adm1032 ; 
 int /*<<< orphan*/  dev_attr_pec ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct lm90_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct lm90_data*) ; 
 struct lm90_data* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm90_group ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*) ; 
 scalar_t__ max6646 ; 
 scalar_t__ max6657 ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__ sensor_dev_attr_temp2_offset ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct i2c_adapter* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *new_client,
		      const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = FUNC13(new_client->dev.parent);
	struct lm90_data *data;
	int err;

	data = FUNC8(sizeof(struct lm90_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}
	FUNC6(new_client, data);
	FUNC10(&data->update_lock);

	/* Set the device type */
	data->kind = id->driver_data;
	if (data->kind == adm1032) {
		if (!FUNC5(adapter, I2C_FUNC_SMBUS_BYTE))
			new_client->flags &= ~I2C_CLIENT_PEC;
	}

	/* Initialize the LM90 chip */
	FUNC9(new_client);

	/* Register sysfs hooks */
	if ((err = FUNC11(&new_client->dev.kobj, &lm90_group)))
		goto exit_free;
	if (new_client->flags & I2C_CLIENT_PEC) {
		if ((err = FUNC2(&new_client->dev,
					      &dev_attr_pec)))
			goto exit_remove_files;
	}
	if (data->kind != max6657 && data->kind != max6646) {
		if ((err = FUNC2(&new_client->dev,
				&sensor_dev_attr_temp2_offset.dev_attr)))
			goto exit_remove_files;
	}

	data->hwmon_dev = FUNC4(&new_client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove_files;
	}

	return 0;

exit_remove_files:
	FUNC12(&new_client->dev.kobj, &lm90_group);
	FUNC3(&new_client->dev, &dev_attr_pec);
exit_free:
	FUNC7(data);
exit:
	return err;
}