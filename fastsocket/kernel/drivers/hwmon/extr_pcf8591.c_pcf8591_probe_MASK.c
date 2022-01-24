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
struct pcf8591_data {int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dev_attr_in2_input ; 
 int /*<<< orphan*/  dev_attr_in3_input ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,struct pcf8591_data*) ; 
 int input_mode ; 
 int /*<<< orphan*/  FUNC2 (struct pcf8591_data*) ; 
 struct pcf8591_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcf8591_attr_group ; 
 int /*<<< orphan*/  pcf8591_attr_group_opt ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct pcf8591_data *data;
	int err;

	if (!(data = FUNC3(sizeof(struct pcf8591_data), GFP_KERNEL))) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC1(client, data);
	FUNC4(&data->update_lock);

	/* Initialize the PCF8591 chip */
	FUNC5(client);

	/* Register sysfs hooks */
	err = FUNC6(&client->dev.kobj, &pcf8591_attr_group);
	if (err)
		goto exit_kfree;

	/* Register input2 if not in "two differential inputs" mode */
	if (input_mode != 3) {
		if ((err = FUNC0(&client->dev,
					      &dev_attr_in2_input)))
			goto exit_sysfs_remove;
	}

	/* Register input3 only in "four single ended inputs" mode */
	if (input_mode == 0) {
		if ((err = FUNC0(&client->dev,
					      &dev_attr_in3_input)))
			goto exit_sysfs_remove;
	}

	return 0;

exit_sysfs_remove:
	FUNC7(&client->dev.kobj, &pcf8591_attr_group_opt);
	FUNC7(&client->dev.kobj, &pcf8591_attr_group);
exit_kfree:
	FUNC2(data);
exit:
	return err;
}