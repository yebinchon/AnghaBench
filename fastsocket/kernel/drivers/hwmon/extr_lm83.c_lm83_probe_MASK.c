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
struct lm83_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; scalar_t__ valid; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct lm83_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct lm83_data*) ; 
 struct lm83_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ lm83 ; 
 int /*<<< orphan*/  lm83_group ; 
 int /*<<< orphan*/  lm83_group_opt ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *new_client,
		      const struct i2c_device_id *id)
{
	struct lm83_data *data;
	int err;

	data = FUNC5(sizeof(struct lm83_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC3(new_client, data);
	data->valid = 0;
	FUNC6(&data->update_lock);

	/*
	 * Register sysfs hooks
	 * The LM82 can only monitor one external diode which is
	 * at the same register as the LM83 temp3 entry - so we
	 * declare 1 and 3 common, and then 2 and 4 only for the LM83.
	 */

	if ((err = FUNC7(&new_client->dev.kobj, &lm83_group)))
		goto exit_free;

	if (id->driver_data == lm83) {
		if ((err = FUNC7(&new_client->dev.kobj,
					      &lm83_group_opt)))
			goto exit_remove_files;
	}

	data->hwmon_dev = FUNC2(&new_client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove_files;
	}

	return 0;

exit_remove_files:
	FUNC8(&new_client->dev.kobj, &lm83_group);
	FUNC8(&new_client->dev.kobj, &lm83_group_opt);
exit_free:
	FUNC4(data);
exit:
	return err;
}