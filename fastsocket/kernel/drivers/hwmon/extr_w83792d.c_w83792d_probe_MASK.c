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
struct w83792d_data {int /*<<< orphan*/ ** lm75; int /*<<< orphan*/  hwmon_dev; void** fan_min; int /*<<< orphan*/  update_lock; scalar_t__ valid; } ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * W83792D_REG_FAN_MIN ; 
 int /*<<< orphan*/  W83792D_REG_GPIO_EN ; 
 int /*<<< orphan*/  W83792D_REG_PIN ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct w83792d_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct w83792d_data*) ; 
 struct w83792d_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct i2c_client*) ; 
 int /*<<< orphan*/  w83792d_group ; 
 int /*<<< orphan*/ * w83792d_group_fan ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*) ; 
 void* FUNC13 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct w83792d_data *data;
	struct device *dev = &client->dev;
	int i, val1, err;

	data = FUNC7(sizeof(struct w83792d_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto ERROR0;
	}

	FUNC4(client, data);
	data->valid = 0;
	FUNC8(&data->update_lock);

	err = FUNC11(client);
	if (err)
		goto ERROR1;

	/* Initialize the chip */
	FUNC12(client);

	/* A few vars need to be filled upon startup */
	for (i = 0; i < 7; i++) {
		data->fan_min[i] = FUNC13(client,
					W83792D_REG_FAN_MIN[i]);
	}

	/* Register sysfs hooks */
	if ((err = FUNC9(&dev->kobj, &w83792d_group)))
		goto ERROR3;

	/* Read GPIO enable register to check if pins for fan 4,5 are used as
	   GPIO */
	val1 = FUNC13(client, W83792D_REG_GPIO_EN);

	if (!(val1 & 0x40))
		if ((err = FUNC9(&dev->kobj,
					      &w83792d_group_fan[0])))
			goto exit_remove_files;

	if (!(val1 & 0x20))
		if ((err = FUNC9(&dev->kobj,
					      &w83792d_group_fan[1])))
			goto exit_remove_files;

	val1 = FUNC13(client, W83792D_REG_PIN);
	if (val1 & 0x40)
		if ((err = FUNC9(&dev->kobj,
					      &w83792d_group_fan[2])))
			goto exit_remove_files;

	if (val1 & 0x04)
		if ((err = FUNC9(&dev->kobj,
					      &w83792d_group_fan[3])))
			goto exit_remove_files;

	data->hwmon_dev = FUNC3(dev);
	if (FUNC1(data->hwmon_dev)) {
		err = FUNC2(data->hwmon_dev);
		goto exit_remove_files;
	}

	return 0;

exit_remove_files:
	FUNC10(&dev->kobj, &w83792d_group);
	for (i = 0; i < FUNC0(w83792d_group_fan); i++)
		FUNC10(&dev->kobj, &w83792d_group_fan[i]);
ERROR3:
	if (data->lm75[0] != NULL)
		FUNC5(data->lm75[0]);
	if (data->lm75[1] != NULL)
		FUNC5(data->lm75[1]);
ERROR1:
	FUNC6(data);
ERROR0:
	return err;
}