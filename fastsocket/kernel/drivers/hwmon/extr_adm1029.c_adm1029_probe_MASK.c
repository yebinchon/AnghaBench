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
struct i2c_client {TYPE_1__ dev; } ;
struct adm1029_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adm1029_group ; 
 scalar_t__ FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct adm1029_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct adm1029_data*) ; 
 struct adm1029_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct adm1029_data *data;
	int err;

	data = FUNC6(sizeof(struct adm1029_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC4(client, data);
	FUNC7(&data->update_lock);

	/*
	 * Initialize the ADM1029 chip
	 * Check config register
	 */
	if (FUNC2(client) == 0) {
		err = -ENODEV;
		goto exit_free;
	}

	/* Register sysfs hooks */
	if ((err = FUNC8(&client->dev.kobj, &adm1029_group)))
		goto exit_free;

	data->hwmon_dev = FUNC3(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove_files;
	}

	return 0;

 exit_remove_files:
	FUNC9(&client->dev.kobj, &adm1029_group);
 exit_free:
	FUNC5(data);
 exit:
	return err;
}