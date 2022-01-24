#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  adapter; } ;
struct ad7414_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD7414_REG_CONF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_READ_WORD_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ad7414_group ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct ad7414_data*) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ad7414_data*) ; 
 struct ad7414_data* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			const struct i2c_device_id *dev_id)
{
	struct ad7414_data *data;
	int conf;
	int err = 0;

	if (!FUNC5(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA |
				     I2C_FUNC_SMBUS_READ_WORD_DATA))
		goto exit;

	data = FUNC10(sizeof(struct ad7414_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC6(client, data);
	FUNC11(&data->lock);

	FUNC2(&client->dev, "chip found\n");

	/* Make sure the chip is powered up. */
	conf = FUNC7(client, AD7414_REG_CONF);
	if (conf < 0)
		FUNC3(&client->dev,
			 "ad7414_probe unable to read config register.\n");
	else {
		conf &= ~(1 << 7);
		FUNC8(client, AD7414_REG_CONF, conf);
	}

	/* Register sysfs hooks */
	err = FUNC12(&client->dev.kobj, &ad7414_group);
	if (err)
		goto exit_free;

	data->hwmon_dev = FUNC4(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove;
	}

	return 0;

exit_remove:
	FUNC13(&client->dev.kobj, &ad7414_group);
exit_free:
	FUNC9(data);
exit:
	return err;
}