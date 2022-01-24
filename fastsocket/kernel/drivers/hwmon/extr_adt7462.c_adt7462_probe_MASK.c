#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_3__ dev; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  attrs; } ;
struct adt7462_data {TYPE_1__ attrs; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adt7462_attr ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct adt7462_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct adt7462_data*) ; 
 struct adt7462_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct adt7462_data *data;
	int err;

	data = FUNC6(sizeof(struct adt7462_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC4(client, data);
	FUNC7(&data->lock);

	FUNC2(&client->dev, "%s chip found\n", client->name);

	/* Register sysfs hooks */
	data->attrs.attrs = adt7462_attr;
	err = FUNC8(&client->dev.kobj, &data->attrs);
	if (err)
		goto exit_free;

	data->hwmon_dev = FUNC3(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove;
	}

	return 0;

exit_remove:
	FUNC9(&client->dev.kobj, &data->attrs);
exit_free:
	FUNC5(data);
exit:
	return err;
}