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
typedef  int u8 ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adm1025_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADM1025_REG_CONFIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adm1025_group ; 
 int /*<<< orphan*/  adm1025_group_in4 ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct adm1025_data*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct adm1025_data*) ; 
 struct adm1025_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct adm1025_data *data;
	int err;
	u8 config;

	data = FUNC7(sizeof(struct adm1025_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC4(client, data);
	FUNC8(&data->update_lock);

	/* Initialize the ADM1025 chip */
	FUNC2(client);

	/* Register sysfs hooks */
	if ((err = FUNC9(&client->dev.kobj, &adm1025_group)))
		goto exit_free;

	/* Pin 11 is either in4 (+12V) or VID4 */
	config = FUNC5(client, ADM1025_REG_CONFIG);
	if (!(config & 0x20)) {
		if ((err = FUNC9(&client->dev.kobj,
					      &adm1025_group_in4)))
			goto exit_remove;
	}

	data->hwmon_dev = FUNC3(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove;
	}

	return 0;

exit_remove:
	FUNC10(&client->dev.kobj, &adm1025_group);
	FUNC10(&client->dev.kobj, &adm1025_group_in4);
exit_free:
	FUNC6(data);
exit:
	return err;
}