#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tmp401_data {int kind; int /*<<< orphan*/ * hwmon_dev; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {int driver_data; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_attr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct tmp401_data*) ; 
 struct tmp401_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* tmp401_attr ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*) ; 
 int tmp411 ; 
 TYPE_1__* tmp411_attr ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int i, err = 0;
	struct tmp401_data *data;
	const char *names[] = { "TMP401", "TMP411" };

	data = FUNC7(sizeof(struct tmp401_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC6(client, data);
	FUNC8(&data->update_lock);
	data->kind = id->driver_data;

	/* Initialize the TMP401 chip */
	FUNC9(client);

	/* Register sysfs hooks */
	for (i = 0; i < FUNC0(tmp401_attr); i++) {
		err = FUNC4(&client->dev,
					 &tmp401_attr[i].dev_attr);
		if (err)
			goto exit_remove;
	}

	/* Register aditional tmp411 sysfs hooks */
	if (data->kind == tmp411) {
		for (i = 0; i < FUNC0(tmp411_attr); i++) {
			err = FUNC4(&client->dev,
						 &tmp411_attr[i].dev_attr);
			if (err)
				goto exit_remove;
		}
	}

	data->hwmon_dev = FUNC5(&client->dev);
	if (FUNC1(data->hwmon_dev)) {
		err = FUNC2(data->hwmon_dev);
		data->hwmon_dev = NULL;
		goto exit_remove;
	}

	FUNC3(&client->dev, "Detected TI %s chip\n",
		 names[data->kind - 1]);

	return 0;

exit_remove:
	FUNC10(client); /* will also free data for us */
	return err;
}