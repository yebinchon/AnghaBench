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
struct w83781d_data {scalar_t__* lm75; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  type; struct i2c_client* client; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  lock; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct w83781d_data*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct w83781d_data*) ; 
 struct w83781d_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct i2c_client*) ; 
 int /*<<< orphan*/  w83781d_group ; 
 int /*<<< orphan*/  w83781d_group_opt ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 

__attribute__((used)) static int
FUNC12(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct w83781d_data *data;
	int err;

	data = FUNC6(sizeof(struct w83781d_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto ERROR1;
	}

	FUNC3(client, data);
	FUNC7(&data->lock);
	FUNC7(&data->update_lock);

	data->type = id->driver_data;
	data->client = client;

	/* attach secondary i2c lm75-like clients */
	err = FUNC10(client);
	if (err)
		goto ERROR3;

	/* Initialize the chip */
	FUNC11(dev);

	/* Register sysfs hooks */
	err = FUNC9(dev, data->type, 0);
	if (err)
		goto ERROR4;

	data->hwmon_dev = FUNC2(dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto ERROR4;
	}

	return 0;

ERROR4:
	FUNC8(&dev->kobj, &w83781d_group);
	FUNC8(&dev->kobj, &w83781d_group_opt);

	if (data->lm75[0])
		FUNC4(data->lm75[0]);
	if (data->lm75[1])
		FUNC4(data->lm75[1]);
ERROR3:
	FUNC3(client, NULL);
	FUNC5(data);
ERROR1:
	return err;
}