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
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adt7475_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ADT7475_PWM_COUNT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adt7475_attr_group ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct adt7475_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct adt7475_data*) ; 
 struct adt7475_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct adt7475_data *data;
	int i, ret = 0;

	data = FUNC6(sizeof(*data), GFP_KERNEL);
	if (data == NULL)
		return -ENOMEM;

	FUNC7(&data->lock);
	FUNC4(client, data);

	/* Call adt7475_read_pwm for all pwm's as this will reprogram any
	   pwm's which are disabled to manual mode with 0% duty cycle */
	for (i = 0; i < ADT7475_PWM_COUNT; i++)
		FUNC2(client, i);

	ret = FUNC8(&client->dev.kobj, &adt7475_attr_group);
	if (ret)
		goto efree;

	data->hwmon_dev = FUNC3(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		ret = FUNC1(data->hwmon_dev);
		goto eremove;
	}

	return 0;

eremove:
	FUNC9(&client->dev.kobj, &adt7475_attr_group);
efree:
	FUNC5(data);
	return ret;
}