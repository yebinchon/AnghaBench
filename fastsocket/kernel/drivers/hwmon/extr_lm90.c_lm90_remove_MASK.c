#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lm90_data {scalar_t__ kind; int /*<<< orphan*/  hwmon_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_pec ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct lm90_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct lm90_data*) ; 
 int /*<<< orphan*/  lm90_group ; 
 scalar_t__ max6646 ; 
 scalar_t__ max6657 ; 
 TYPE_1__ sensor_dev_attr_temp2_offset ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct lm90_data *data = FUNC2(client);

	FUNC1(data->hwmon_dev);
	FUNC4(&client->dev.kobj, &lm90_group);
	FUNC0(&client->dev, &dev_attr_pec);
	if (data->kind != max6657 && data->kind != max6646)
		FUNC0(&client->dev,
				   &sensor_dev_attr_temp2_offset.dev_attr);

	FUNC3(data);
	return 0;
}