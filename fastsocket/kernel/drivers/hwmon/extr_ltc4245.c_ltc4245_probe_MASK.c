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
struct ltc4245_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LTC4245_FAULT1 ; 
 int /*<<< orphan*/  LTC4245_FAULT2 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct ltc4245_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ltc4245_data*) ; 
 struct ltc4245_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ltc4245_group ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct ltc4245_data *data;
	int ret;

	if (!FUNC3(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	data = FUNC7(sizeof(*data), GFP_KERNEL);
	if (!data) {
		ret = -ENOMEM;
		goto out_kzalloc;
	}

	FUNC4(client, data);
	FUNC8(&data->update_lock);

	/* Initialize the LTC4245 chip */
	FUNC5(client, LTC4245_FAULT1, 0x00);
	FUNC5(client, LTC4245_FAULT2, 0x00);

	/* Register sysfs hooks */
	ret = FUNC9(&client->dev.kobj, &ltc4245_group);
	if (ret)
		goto out_sysfs_create_group;

	data->hwmon_dev = FUNC2(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		ret = FUNC1(data->hwmon_dev);
		goto out_hwmon_device_register;
	}

	return 0;

out_hwmon_device_register:
	FUNC10(&client->dev.kobj, &ltc4245_group);
out_sysfs_create_group:
	FUNC6(data);
out_kzalloc:
	return ret;
}