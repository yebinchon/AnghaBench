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
struct smsc47m192_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  vrm; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMSC47M192_REG_CONFIG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct smsc47m192_data*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct smsc47m192_data*) ; 
 struct smsc47m192_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smsc47m192_group ; 
 int /*<<< orphan*/  smsc47m192_group_in4 ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	struct smsc47m192_data *data;
	int config;
	int err;

	data = FUNC6(sizeof(struct smsc47m192_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC3(client, data);
	data->vrm = FUNC11();
	FUNC7(&data->update_lock);

	/* Initialize the SMSC47M192 chip */
	FUNC8(client);

	/* Register sysfs hooks */
	if ((err = FUNC9(&client->dev.kobj, &smsc47m192_group)))
		goto exit_free;

	/* Pin 110 is either in4 (+12V) or VID4 */
	config = FUNC4(client, SMSC47M192_REG_CONFIG);
	if (!(config & 0x20)) {
		if ((err = FUNC9(&client->dev.kobj,
					      &smsc47m192_group_in4)))
			goto exit_remove_files;
	}

	data->hwmon_dev = FUNC2(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove_files;
	}

	return 0;

exit_remove_files:
	FUNC10(&client->dev.kobj, &smsc47m192_group);
	FUNC10(&client->dev.kobj, &smsc47m192_group_in4);
exit_free:
	FUNC5(data);
exit:
	return err;
}