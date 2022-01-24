#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  kobj; struct f75375s_platform_data* platform_data; } ;
struct i2c_client {TYPE_5__ dev; int /*<<< orphan*/  adapter; } ;
struct f75375s_platform_data {int dummy; } ;
struct f75375_data {scalar_t__ kind; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  attr; } ;
struct TYPE_9__ {TYPE_1__ dev_attr; } ;
struct TYPE_7__ {int /*<<< orphan*/  attr; } ;
struct TYPE_8__ {TYPE_2__ dev_attr; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 scalar_t__ f75375 ; 
 int /*<<< orphan*/  f75375_group ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,struct f75375_data*,struct f75375s_platform_data*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct f75375_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct f75375_data*) ; 
 struct f75375_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_4__ sensor_dev_attr_pwm1_mode ; 
 TYPE_3__ sensor_dev_attr_pwm2_mode ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct f75375_data *data;
	struct f75375s_platform_data *f75375s_pdata = client->dev.platform_data;
	int err;

	if (!FUNC4(client->adapter,
				I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;
	if (!(data = FUNC7(sizeof(struct f75375_data), GFP_KERNEL)))
		return -ENOMEM;

	FUNC5(client, data);
	FUNC8(&data->update_lock);
	data->kind = id->driver_data;

	if ((err = FUNC10(&client->dev.kobj, &f75375_group)))
		goto exit_free;

	if (data->kind == f75375) {
		err = FUNC9(&client->dev.kobj,
			&sensor_dev_attr_pwm1_mode.dev_attr.attr,
			S_IRUGO | S_IWUSR);
		if (err)
			goto exit_remove;
		err = FUNC9(&client->dev.kobj,
			&sensor_dev_attr_pwm2_mode.dev_attr.attr,
			S_IRUGO | S_IWUSR);
		if (err)
			goto exit_remove;
	}

	data->hwmon_dev = FUNC3(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove;
	}

	if (f75375s_pdata != NULL)
		FUNC2(client, data, f75375s_pdata);

	return 0;

exit_remove:
	FUNC11(&client->dev.kobj, &f75375_group);
exit_free:
	FUNC6(data);
	FUNC5(client, NULL);
	return err;
}