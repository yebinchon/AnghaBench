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
struct i2c_device_id {int driver_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_3__ dev; int /*<<< orphan*/  name; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  attrs; } ;
struct ad7418_data {int type; int adc_max; TYPE_1__ attrs; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  ad7416 130 
 int /*<<< orphan*/  ad7416_attributes ; 
#define  ad7417 129 
 int /*<<< orphan*/  ad7417_attributes ; 
#define  ad7418 128 
 int /*<<< orphan*/  ad7418_attributes ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct ad7418_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct ad7418_data*) ; 
 struct ad7418_data* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct ad7418_data *data;
	int err;

	if (!FUNC5(adapter, I2C_FUNC_SMBUS_BYTE_DATA |
					I2C_FUNC_SMBUS_WORD_DATA)) {
		err = -EOPNOTSUPP;
		goto exit;
	}

	if (!(data = FUNC8(sizeof(struct ad7418_data), GFP_KERNEL))) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC6(client, data);

	FUNC9(&data->lock);
	data->type = id->driver_data;

	switch (data->type) {
	case ad7416:
		data->adc_max = 0;
		data->attrs.attrs = ad7416_attributes;
		break;

	case ad7417:
		data->adc_max = 4;
		data->attrs.attrs = ad7417_attributes;
		break;

	case ad7418:
		data->adc_max = 1;
		data->attrs.attrs = ad7418_attributes;
		break;
	}

	FUNC3(&client->dev, "%s chip found\n", client->name);

	/* Initialize the AD7418 chip */
	FUNC2(client);

	/* Register sysfs hooks */
	if ((err = FUNC10(&client->dev.kobj, &data->attrs)))
		goto exit_free;

	data->hwmon_dev = FUNC4(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove;
	}

	return 0;

exit_remove:
	FUNC11(&client->dev.kobj, &data->attrs);
exit_free:
	FUNC7(data);
exit:
	return err;
}