#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_11__ dev; } ;
struct gl520_data {int /*<<< orphan*/  hwmon_dev; scalar_t__ two_temps; int /*<<< orphan*/  update_lock; } ;
struct TYPE_23__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_22__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_21__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_20__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_19__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_18__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_17__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_16__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_15__ {int /*<<< orphan*/  dev_attr; } ;
struct TYPE_13__ {int /*<<< orphan*/  dev_attr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_11__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gl520_group ; 
 int /*<<< orphan*/  gl520_group_opt ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct gl520_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct gl520_data*) ; 
 struct gl520_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_10__ sensor_dev_attr_in4_alarm ; 
 TYPE_9__ sensor_dev_attr_in4_beep ; 
 TYPE_8__ sensor_dev_attr_in4_input ; 
 TYPE_7__ sensor_dev_attr_in4_max ; 
 TYPE_6__ sensor_dev_attr_in4_min ; 
 TYPE_5__ sensor_dev_attr_temp2_alarm ; 
 TYPE_4__ sensor_dev_attr_temp2_beep ; 
 TYPE_3__ sensor_dev_attr_temp2_input ; 
 TYPE_2__ sensor_dev_attr_temp2_max ; 
 TYPE_1__ sensor_dev_attr_temp2_max_hyst ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
		       const struct i2c_device_id *id)
{
	struct gl520_data *data;
	int err;

	data = FUNC7(sizeof(struct gl520_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC5(client, data);
	FUNC8(&data->update_lock);

	/* Initialize the GL520SM chip */
	FUNC3(client);

	/* Register sysfs hooks */
	if ((err = FUNC9(&client->dev.kobj, &gl520_group)))
		goto exit_free;

	if (data->two_temps) {
		if ((err = FUNC2(&client->dev,
				&sensor_dev_attr_temp2_input.dev_attr))
		 || (err = FUNC2(&client->dev,
				&sensor_dev_attr_temp2_max.dev_attr))
		 || (err = FUNC2(&client->dev,
				&sensor_dev_attr_temp2_max_hyst.dev_attr))
		 || (err = FUNC2(&client->dev,
				&sensor_dev_attr_temp2_alarm.dev_attr))
		 || (err = FUNC2(&client->dev,
				&sensor_dev_attr_temp2_beep.dev_attr)))
			goto exit_remove_files;
	} else {
		if ((err = FUNC2(&client->dev,
				&sensor_dev_attr_in4_input.dev_attr))
		 || (err = FUNC2(&client->dev,
				&sensor_dev_attr_in4_min.dev_attr))
		 || (err = FUNC2(&client->dev,
				&sensor_dev_attr_in4_max.dev_attr))
		 || (err = FUNC2(&client->dev,
				&sensor_dev_attr_in4_alarm.dev_attr))
		 || (err = FUNC2(&client->dev,
				&sensor_dev_attr_in4_beep.dev_attr)))
			goto exit_remove_files;
	}


	data->hwmon_dev = FUNC4(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove_files;
	}

	return 0;

exit_remove_files:
	FUNC10(&client->dev.kobj, &gl520_group);
	FUNC10(&client->dev.kobj, &gl520_group_opt);
exit_free:
	FUNC6(data);
exit:
	return err;
}