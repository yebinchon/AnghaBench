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
struct adt7473_data {TYPE_1__ attrs; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adt7473_attr ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct adt7473_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct adt7473_data*) ; 
 struct adt7473_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct adt7473_data *data;
	int err;

	data = FUNC7(sizeof(struct adt7473_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC5(client, data);
	FUNC8(&data->lock);

	FUNC3(&client->dev, "%s chip found\n", client->name);

	/* Initialize the ADT7473 chip */
	FUNC2(client);

	/* Register sysfs hooks */
	data->attrs.attrs = adt7473_attr;
	err = FUNC9(&client->dev.kobj, &data->attrs);
	if (err)
		goto exit_free;

	data->hwmon_dev = FUNC4(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove;
	}

	return 0;

exit_remove:
	FUNC10(&client->dev.kobj, &data->attrs);
exit_free:
	FUNC6(data);
exit:
	return err;
}