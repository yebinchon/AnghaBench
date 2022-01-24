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
struct thmc50_data {scalar_t__ has_temp3; int /*<<< orphan*/  hwmon_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct thmc50_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct thmc50_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  temp3_group ; 
 int /*<<< orphan*/  thmc50_group ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct thmc50_data *data = FUNC1(client);

	FUNC0(data->hwmon_dev);
	FUNC3(&client->dev.kobj, &thmc50_group);
	if (data->has_temp3)
		FUNC3(&client->dev.kobj, &temp3_group);

	FUNC2(data);

	return 0;
}