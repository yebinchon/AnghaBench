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
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;
struct dme1737_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  name; struct i2c_client* client; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct device*) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct dme1737_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct dme1737_data*) ; 
 struct dme1737_data* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	struct dme1737_data *data;
	struct device *dev = &client->dev;
	int err;

	data = FUNC9(sizeof(struct dme1737_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC7(client, data);
	data->type = id->driver_data;
	data->client = client;
	data->name = client->name;
	FUNC10(&data->update_lock);

	/* Initialize the DME1737 chip */
	if ((err = FUNC4(dev))) {
		FUNC2(dev, "Failed to initialize device.\n");
		goto exit_kfree;
	}

	/* Create sysfs files */
	if ((err = FUNC3(dev))) {
		FUNC2(dev, "Failed to create sysfs files.\n");
		goto exit_kfree;
	}

	/* Register device */
	data->hwmon_dev = FUNC6(dev);
	if (FUNC0(data->hwmon_dev)) {
		FUNC2(dev, "Failed to register device.\n");
		err = FUNC1(data->hwmon_dev);
		goto exit_remove;
	}

	return 0;

exit_remove:
	FUNC5(dev);
exit_kfree:
	FUNC8(data);
exit:
	return err;
}