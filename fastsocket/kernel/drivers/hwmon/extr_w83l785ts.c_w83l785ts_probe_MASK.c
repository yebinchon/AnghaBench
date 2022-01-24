#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct w83l785ts_data {int /*<<< orphan*/  hwmon_dev; scalar_t__* temp; int /*<<< orphan*/  update_lock; scalar_t__ valid; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_attr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct w83l785ts_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct w83l785ts_data*) ; 
 struct w83l785ts_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__ sensor_dev_attr_temp1_input ; 
 TYPE_1__ sensor_dev_attr_temp1_max ; 

__attribute__((used)) static int FUNC9(struct i2c_client *new_client,
			   const struct i2c_device_id *id)
{
	struct w83l785ts_data *data;
	int err = 0;

	data = FUNC7(sizeof(struct w83l785ts_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC5(new_client, data);
	data->valid = 0;
	FUNC8(&data->update_lock);

	/* Default values in case the first read fails (unlikely). */
	data->temp[1] = data->temp[0] = 0;

	/*
	 * Initialize the W83L785TS chip
	 * Nothing yet, assume it is already started.
	 */

	err = FUNC2(&new_client->dev,
				 &sensor_dev_attr_temp1_input.dev_attr);
	if (err)
		goto exit_remove;

	err = FUNC2(&new_client->dev,
				 &sensor_dev_attr_temp1_max.dev_attr);
	if (err)
		goto exit_remove;

	/* Register sysfs hooks */
	data->hwmon_dev = FUNC4(&new_client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove;
	}

	return 0;

exit_remove:
	FUNC3(&new_client->dev,
			   &sensor_dev_attr_temp1_input.dev_attr);
	FUNC3(&new_client->dev,
			   &sensor_dev_attr_temp1_max.dev_attr);
	FUNC6(data);
exit:
	return err;
}