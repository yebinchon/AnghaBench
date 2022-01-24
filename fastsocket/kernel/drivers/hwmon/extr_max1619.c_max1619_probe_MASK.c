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
struct max1619_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; scalar_t__ valid; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct max1619_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct max1619_data*) ; 
 struct max1619_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max1619_group ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *new_client,
			 const struct i2c_device_id *id)
{
	struct max1619_data *data;
	int err;

	data = FUNC5(sizeof(struct max1619_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC3(new_client, data);
	data->valid = 0;
	FUNC7(&data->update_lock);

	/* Initialize the MAX1619 chip */
	FUNC6(new_client);

	/* Register sysfs hooks */
	if ((err = FUNC8(&new_client->dev.kobj, &max1619_group)))
		goto exit_free;

	data->hwmon_dev = FUNC2(&new_client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove_files;
	}

	return 0;

exit_remove_files:
	FUNC9(&new_client->dev.kobj, &max1619_group);
exit_free:
	FUNC4(data);
exit:
	return err;
}