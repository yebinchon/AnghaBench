#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct w83l786ng_data {int* fan_div; int /*<<< orphan*/  hwmon_dev; void** fan_min; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  W83L786NG_REG_FAN_DIV ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct w83l786ng_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct w83l786ng_data*) ; 
 struct w83l786ng_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  w83l786ng_group ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*) ; 
 void* FUNC11 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct w83l786ng_data *data;
	int i, err = 0;
	u8 reg_tmp;

	data = FUNC6(sizeof(struct w83l786ng_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC4(client, data);
	FUNC7(&data->update_lock);

	/* Initialize the chip */
	FUNC10(client);

	/* A few vars need to be filled upon startup */
	for (i = 0; i < 2; i++) {
		data->fan_min[i] = FUNC11(client,
		    FUNC2(i));
	}

	/* Update the fan divisor */
	reg_tmp = FUNC11(client, W83L786NG_REG_FAN_DIV);
	data->fan_div[0] = reg_tmp & 0x07;
	data->fan_div[1] = (reg_tmp >> 4) & 0x07;

	/* Register sysfs hooks */
	if ((err = FUNC8(&client->dev.kobj, &w83l786ng_group)))
		goto exit_remove;

	data->hwmon_dev = FUNC3(dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove;
	}

	return 0;

	/* Unregister sysfs hooks */

exit_remove:
	FUNC9(&client->dev.kobj, &w83l786ng_group);
	FUNC5(data);
exit:
	return err;
}