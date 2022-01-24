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
typedef  int u8 ;
struct lm75_data {int orig_conf; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM75_REG_CONF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct lm75_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct lm75_data*) ; 
 struct lm75_data* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm75_group ; 
 int FUNC10 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct lm75_data *data;
	int status;
	u8 set_mask, clr_mask;
	int new;

	if (!FUNC6(client->adapter,
			I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_WORD_DATA))
		return -EIO;

	data = FUNC9(sizeof(struct lm75_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC7(client, data);
	FUNC12(&data->update_lock);

	/* Set to LM75 resolution (9 bits, 1/2 degree C) and range.
	 * Then tweak to be more precise when appropriate.
	 */
	set_mask = 0;
	clr_mask = (1 << 0)			/* continuous conversions */
		| (1 << 6) | (1 << 5);		/* 9-bit mode */

	/* configure as specified */
	status = FUNC10(client, LM75_REG_CONF);
	if (status < 0) {
		FUNC2(&client->dev, "Can't read config? %d\n", status);
		goto exit_free;
	}
	data->orig_conf = status;
	new = status & ~clr_mask;
	new |= set_mask;
	if (status != new)
		FUNC11(client, LM75_REG_CONF, new);
	FUNC2(&client->dev, "Config %02x\n", new);

	/* Register sysfs hooks */
	status = FUNC13(&client->dev.kobj, &lm75_group);
	if (status)
		goto exit_free;

	data->hwmon_dev = FUNC5(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		status = FUNC1(data->hwmon_dev);
		goto exit_remove;
	}

	FUNC3(&client->dev, "%s: sensor '%s'\n",
		 FUNC4(data->hwmon_dev), client->name);

	return 0;

exit_remove:
	FUNC14(&client->dev.kobj, &lm75_group);
exit_free:
	FUNC7(client, NULL);
	FUNC8(data);
	return status;
}