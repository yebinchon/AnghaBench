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
struct gl518_data {scalar_t__ type; int alarm_mask; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GL518_REG_REVISION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gl518_group ; 
 int /*<<< orphan*/  gl518_group_r80 ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ gl518sm_r00 ; 
 scalar_t__ gl518sm_r80 ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct gl518_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct gl518_data*) ; 
 struct gl518_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
		       const struct i2c_device_id *id)
{
	struct gl518_data *data;
	int err, revision;

	data = FUNC7(sizeof(struct gl518_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC5(client, data);
	revision = FUNC3(client, GL518_REG_REVISION);
	data->type = revision == 0x80 ? gl518sm_r80 : gl518sm_r00;
	FUNC8(&data->update_lock);

	/* Initialize the GL518SM chip */
	data->alarm_mask = 0xff;
	FUNC2(client);

	/* Register sysfs hooks */
	if ((err = FUNC9(&client->dev.kobj, &gl518_group)))
		goto exit_free;
	if (data->type == gl518sm_r80)
		if ((err = FUNC9(&client->dev.kobj,
					      &gl518_group_r80)))
			goto exit_remove_files;

	data->hwmon_dev = FUNC4(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove_files;
	}

	return 0;

exit_remove_files:
	FUNC10(&client->dev.kobj, &gl518_group);
	if (data->type == gl518sm_r80)
		FUNC10(&client->dev.kobj, &gl518_group_r80);
exit_free:
	FUNC6(data);
exit:
	return err;
}