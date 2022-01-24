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
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  adapter; } ;
struct g760a_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  clk; int /*<<< orphan*/  fan_div; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  G760A_DEFAULT_CLK ; 
 int /*<<< orphan*/  G760A_DEFAULT_FAN_DIV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g760a_group ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct g760a_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct g760a_data*) ; 
 struct g760a_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct g760a_data *data;
	int err;

	if (!FUNC3(client->adapter,
				     I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	data = FUNC6(sizeof(struct g760a_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC4(client, data);

	data->client = client;
	FUNC7(&data->update_lock);

	/* setup default configuration for now */
	data->fan_div = G760A_DEFAULT_FAN_DIV;
	data->clk = G760A_DEFAULT_CLK;

	/* Register sysfs hooks */
	err = FUNC8(&client->dev.kobj, &g760a_group);
	if (err)
		goto error_sysfs_create_group;

	data->hwmon_dev = FUNC2(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto error_hwmon_device_register;
	}

	return 0;

error_hwmon_device_register:
	FUNC9(&client->dev.kobj, &g760a_group);
error_sysfs_create_group:
	FUNC5(data);
	FUNC4(client, NULL);

	return err;
}