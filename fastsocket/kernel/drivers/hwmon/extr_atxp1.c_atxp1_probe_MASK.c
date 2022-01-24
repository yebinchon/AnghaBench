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
struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct atxp1_data {int vrm; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; scalar_t__ valid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atxp1_group ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct atxp1_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct atxp1_data*) ; 
 struct atxp1_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct i2c_client *new_client,
		       const struct i2c_device_id *id)
{
	struct atxp1_data *data;
	int err;

	data = FUNC6(sizeof(struct atxp1_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	/* Get VRM */
	data->vrm = FUNC10();

	FUNC4(new_client, data);
	data->valid = 0;

	FUNC7(&data->update_lock);

	/* Register sysfs hooks */
	if ((err = FUNC8(&new_client->dev.kobj, &atxp1_group)))
		goto exit_free;

	data->hwmon_dev = FUNC3(&new_client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove_files;
	}

	FUNC2(&new_client->dev, "Using VRM: %d.%d\n",
			 data->vrm / 10, data->vrm % 10);

	return 0;

exit_remove_files:
	FUNC9(&new_client->dev.kobj, &atxp1_group);
exit_free:
	FUNC5(data);
exit:
	return err;
}