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
struct tmp401_data {scalar_t__ kind; scalar_t__ hwmon_dev; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_attr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct tmp401_data* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct tmp401_data*) ; 
 TYPE_1__* tmp401_attr ; 
 scalar_t__ tmp411 ; 
 TYPE_1__* tmp411_attr ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct tmp401_data *data = FUNC3(client);
	int i;

	if (data->hwmon_dev)
		FUNC2(data->hwmon_dev);

	for (i = 0; i < FUNC0(tmp401_attr); i++)
		FUNC1(&client->dev, &tmp401_attr[i].dev_attr);

	if (data->kind == tmp411) {
		for (i = 0; i < FUNC0(tmp411_attr); i++)
			FUNC1(&client->dev,
					   &tmp411_attr[i].dev_attr);
	}

	FUNC4(data);
	return 0;
}