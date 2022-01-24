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
struct lm93_data {void (* update ) (struct lm93_data*,struct i2c_client*) ;int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; scalar_t__ valid; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LM93_SMBUS_FUNC_FULL ; 
 int LM93_SMBUS_FUNC_MIN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  disable_block ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct lm93_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct lm93_data*) ; 
 struct lm93_data* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm93_attr_grp ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*) ; 
 void FUNC10 (struct lm93_data*,struct i2c_client*) ; 
 void FUNC11 (struct lm93_data*,struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
		      const struct i2c_device_id *id)
{
	struct lm93_data *data;
	int err, func;
	void (*update)(struct lm93_data *, struct i2c_client *);

	/* choose update routine based on bus capabilities */
	func = FUNC5(client->adapter);
	if (((LM93_SMBUS_FUNC_FULL & func) == LM93_SMBUS_FUNC_FULL) &&
			(!disable_block)) {
		FUNC2(&client->dev, "using SMBus block data transactions\n");
		update = lm93_update_client_full;
	} else if ((LM93_SMBUS_FUNC_MIN & func) == LM93_SMBUS_FUNC_MIN) {
		FUNC2(&client->dev, "disabled SMBus block data "
			"transactions\n");
		update = lm93_update_client_min;
	} else {
		FUNC2(&client->dev, "detect failed, "
			"smbus byte and/or word data not supported!\n");
		err = -ENODEV;
		goto err_out;
	}

	data = FUNC8(sizeof(struct lm93_data), GFP_KERNEL);
	if (!data) {
		FUNC2(&client->dev, "out of memory!\n");
		err = -ENOMEM;
		goto err_out;
	}
	FUNC6(client, data);

	/* housekeeping */
	data->valid = 0;
	data->update = update;
	FUNC12(&data->update_lock);

	/* initialize the chip */
	FUNC9(client);

	err = FUNC13(&client->dev.kobj, &lm93_attr_grp);
	if (err)
		goto err_free;

	/* Register hwmon driver class */
	data->hwmon_dev = FUNC4(&client->dev);
	if ( !FUNC0(data->hwmon_dev))
		return 0;

	err = FUNC1(data->hwmon_dev);
	FUNC3(&client->dev, "error registering hwmon device.\n");
	FUNC14(&client->dev.kobj, &lm93_attr_grp);
err_free:
	FUNC7(data);
err_out:
	return err;
}