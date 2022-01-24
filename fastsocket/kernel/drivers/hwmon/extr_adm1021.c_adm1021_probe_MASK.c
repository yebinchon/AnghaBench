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
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adm1021_data {scalar_t__ type; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adm1021_group ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct adm1021_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct adm1021_data*) ; 
 struct adm1021_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ lm84 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  read_only ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct adm1021_data *data;
	int err;

	data = FUNC6(sizeof(struct adm1021_data), GFP_KERNEL);
	if (!data) {
		FUNC8("adm1021: detect failed, kzalloc failed!\n");
		err = -ENOMEM;
		goto error0;
	}

	FUNC4(client, data);
	data->type = id->driver_data;
	FUNC7(&data->update_lock);

	/* Initialize the ADM1021 chip */
	if (data->type != lm84 && !read_only)
		FUNC2(client);

	/* Register sysfs hooks */
	if ((err = FUNC9(&client->dev.kobj, &adm1021_group)))
		goto error1;

	data->hwmon_dev = FUNC3(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto error3;
	}

	return 0;

error3:
	FUNC10(&client->dev.kobj, &adm1021_group);
error1:
	FUNC5(data);
error0:
	return err;
}