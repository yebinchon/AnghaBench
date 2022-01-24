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
struct lm85_data {int type; int vid; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  vrm; int /*<<< orphan*/  freq_map; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {int driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM85_REG_VID ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  adm1027 131 
 int /*<<< orphan*/  adm1027_freq_map ; 
#define  adt7463 130 
 int const adt7468 ; 
#define  emc6d100 129 
#define  emc6d102 128 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct lm85_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct lm85_data*) ; 
 struct lm85_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm85_freq_map ; 
 int /*<<< orphan*/  lm85_group ; 
 int /*<<< orphan*/  lm85_group_in4 ; 
 int /*<<< orphan*/  lm85_group_in567 ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
		      const struct i2c_device_id *id)
{
	struct lm85_data *data;
	int err;

	data = FUNC5(sizeof(struct lm85_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC3(client, data);
	data->type = id->driver_data;
	FUNC8(&data->update_lock);

	/* Fill in the chip specific driver values */
	switch (data->type) {
	case adm1027:
	case adt7463:
	case emc6d100:
	case emc6d102:
		data->freq_map = adm1027_freq_map;
		break;
	default:
		data->freq_map = lm85_freq_map;
	}

	/* Set the VRM version */
	data->vrm = FUNC11();

	/* Initialize the LM85 chip */
	FUNC6(client);

	/* Register sysfs hooks */
	err = FUNC9(&client->dev.kobj, &lm85_group);
	if (err)
		goto err_kfree;

	/* The ADT7463/68 have an optional VRM 10 mode where pin 21 is used
	   as a sixth digital VID input rather than an analog input. */
	data->vid = FUNC7(client, LM85_REG_VID);
	if (!((data->type == adt7463 || data->type == adt7468) &&
	    (data->vid & 0x80)))
		if ((err = FUNC9(&client->dev.kobj,
					&lm85_group_in4)))
			goto err_remove_files;

	/* The EMC6D100 has 3 additional voltage inputs */
	if (data->type == emc6d100)
		if ((err = FUNC9(&client->dev.kobj,
					&lm85_group_in567)))
			goto err_remove_files;

	data->hwmon_dev = FUNC2(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto err_remove_files;
	}

	return 0;

	/* Error out and cleanup code */
 err_remove_files:
	FUNC10(&client->dev.kobj, &lm85_group);
	FUNC10(&client->dev.kobj, &lm85_group_in4);
	if (data->type == emc6d100)
		FUNC10(&client->dev.kobj, &lm85_group_in567);
 err_kfree:
	FUNC4(data);
	return err;
}