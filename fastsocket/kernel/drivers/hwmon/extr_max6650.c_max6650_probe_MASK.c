#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct max6650_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct max6650_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct max6650_data*) ; 
 struct max6650_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max6650_attr_grp ; 
 int FUNC7 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct max6650_data *data;
	int err;

	if (!(data = FUNC6(sizeof(struct max6650_data), GFP_KERNEL))) {
		FUNC2(&client->dev, "out of memory.\n");
		return -ENOMEM;
	}

	FUNC4(client, data);
	FUNC8(&data->update_lock);

	/*
	 * Initialize the max6650 chip
	 */
	err = FUNC7(client);
	if (err)
		goto err_free;

	err = FUNC9(&client->dev.kobj, &max6650_attr_grp);
	if (err)
		goto err_free;

	data->hwmon_dev = FUNC3(&client->dev);
	if (!FUNC0(data->hwmon_dev))
		return 0;

	err = FUNC1(data->hwmon_dev);
	FUNC2(&client->dev, "error registering hwmon device.\n");
	FUNC10(&client->dev.kobj, &max6650_attr_grp);
err_free:
	FUNC5(data);
	return err;
}