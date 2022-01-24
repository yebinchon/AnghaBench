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
struct adm1026_data {int config1; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  vrm; int /*<<< orphan*/  update_lock; } ;

/* Variables and functions */
 int CFG1_AIN8_9 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adm1026_group ; 
 int /*<<< orphan*/  adm1026_group_in8_9 ; 
 int /*<<< orphan*/  adm1026_group_temp3 ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct adm1026_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct adm1026_data*) ; 
 struct adm1026_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct adm1026_data *data;
	int err;

	data = FUNC6(sizeof(struct adm1026_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC4(client, data);
	FUNC7(&data->update_lock);

	/* Set the VRM version */
	data->vrm = FUNC10();

	/* Initialize the ADM1026 chip */
	FUNC2(client);

	/* Register sysfs hooks */
	if ((err = FUNC8(&client->dev.kobj, &adm1026_group)))
		goto exitfree;
	if (data->config1 & CFG1_AIN8_9)
		err = FUNC8(&client->dev.kobj,
					 &adm1026_group_in8_9);
	else
		err = FUNC8(&client->dev.kobj,
					 &adm1026_group_temp3);
	if (err)
		goto exitremove;

	data->hwmon_dev = FUNC3(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exitremove;
	}

	return 0;

	/* Error out and cleanup code */
exitremove:
	FUNC9(&client->dev.kobj, &adm1026_group);
	if (data->config1 & CFG1_AIN8_9)
		FUNC9(&client->dev.kobj, &adm1026_group_in8_9);
	else
		FUNC9(&client->dev.kobj, &adm1026_group_temp3);
exitfree:
	FUNC5(data);
exit:
	return err;
}