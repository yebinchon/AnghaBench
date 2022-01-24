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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct adt7470_data {int /*<<< orphan*/  attrs; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  auto_update_stop; int /*<<< orphan*/  auto_update; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct adt7470_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct adt7470_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct adt7470_data *data = FUNC1(client);

	FUNC3(data->auto_update);
	FUNC5(&data->auto_update_stop);
	FUNC0(data->hwmon_dev);
	FUNC4(&client->dev.kobj, &data->attrs);
	FUNC2(data);
	return 0;
}