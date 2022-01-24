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
struct w83791d_data {int /*<<< orphan*/ ** lm75; int /*<<< orphan*/  hwmon_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct w83791d_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct w83791d_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  w83791d_group ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct w83791d_data *data = FUNC1(client);

	FUNC0(data->hwmon_dev);
	FUNC4(&client->dev.kobj, &w83791d_group);

	if (data->lm75[0] != NULL)
		FUNC2(data->lm75[0]);
	if (data->lm75[1] != NULL)
		FUNC2(data->lm75[1]);

	FUNC3(data);
	return 0;
}