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
struct tmp421_data {int /*<<< orphan*/ * hwmon_dev; int /*<<< orphan*/  channels; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct tmp421_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct tmp421_data*) ; 
 struct tmp421_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmp421_group ; 
 int FUNC9 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct tmp421_data *data;
	int err;

	data = FUNC5(sizeof(struct tmp421_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC3(client, data);
	FUNC6(&data->update_lock);
	data->channels = id->driver_data;

	err = FUNC9(client);
	if (err)
		goto exit_free;

	err = FUNC7(&client->dev.kobj, &tmp421_group);
	if (err)
		goto exit_free;

	data->hwmon_dev = FUNC2(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		data->hwmon_dev = NULL;
		goto exit_remove;
	}
	return 0;

exit_remove:
	FUNC8(&client->dev.kobj, &tmp421_group);

exit_free:
	FUNC3(client, NULL);
	FUNC4(data);

	return err;
}