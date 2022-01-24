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
struct lm78_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  type; struct i2c_client* client; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct lm78_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct lm78_data*) ; 
 struct lm78_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm78_group ; 
 int /*<<< orphan*/  FUNC6 (struct lm78_data*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct lm78_data *data;
	int err;

	data = FUNC5(sizeof(struct lm78_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC3(client, data);
	data->client = client;
	data->type = id->driver_data;

	/* Initialize the LM78 chip */
	FUNC6(data);

	/* Register sysfs hooks */
	err = FUNC7(&client->dev.kobj, &lm78_group);
	if (err)
		goto ERROR3;

	data->hwmon_dev = FUNC2(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto ERROR4;
	}

	return 0;

ERROR4:
	FUNC8(&client->dev.kobj, &lm78_group);
ERROR3:
	FUNC4(data);
	return err;
}