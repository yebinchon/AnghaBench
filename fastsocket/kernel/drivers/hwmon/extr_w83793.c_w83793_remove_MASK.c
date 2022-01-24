#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct w83793_data {int /*<<< orphan*/ ** lm75; int /*<<< orphan*/  hwmon_dev; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev_attr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  dev_attr_vrm ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct w83793_data* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct w83793_data*) ; 
 TYPE_1__* sda_single_files ; 
 TYPE_1__* w83793_left_fan ; 
 TYPE_1__* w83793_left_pwm ; 
 TYPE_1__* w83793_sensor_attr_2 ; 
 TYPE_1__* w83793_temp ; 
 TYPE_1__* w83793_vid ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct w83793_data *data = FUNC3(client);
	struct device *dev = &client->dev;
	int i;

	FUNC2(data->hwmon_dev);

	for (i = 0; i < FUNC0(w83793_sensor_attr_2); i++)
		FUNC1(dev,
				   &w83793_sensor_attr_2[i].dev_attr);

	for (i = 0; i < FUNC0(sda_single_files); i++)
		FUNC1(dev, &sda_single_files[i].dev_attr);

	for (i = 0; i < FUNC0(w83793_vid); i++)
		FUNC1(dev, &w83793_vid[i].dev_attr);
	FUNC1(dev, &dev_attr_vrm);

	for (i = 0; i < FUNC0(w83793_left_fan); i++)
		FUNC1(dev, &w83793_left_fan[i].dev_attr);

	for (i = 0; i < FUNC0(w83793_left_pwm); i++)
		FUNC1(dev, &w83793_left_pwm[i].dev_attr);

	for (i = 0; i < FUNC0(w83793_temp); i++)
		FUNC1(dev, &w83793_temp[i].dev_attr);

	if (data->lm75[0] != NULL)
		FUNC4(data->lm75[0]);
	if (data->lm75[1] != NULL)
		FUNC4(data->lm75[1]);

	FUNC5(data);

	return 0;
}