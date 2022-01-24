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
struct smsc47m192_data {int /*<<< orphan*/  hwmon_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct smsc47m192_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct smsc47m192_data*) ; 
 int /*<<< orphan*/  smsc47m192_group ; 
 int /*<<< orphan*/  smsc47m192_group_in4 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct smsc47m192_data *data = FUNC1(client);

	FUNC0(data->hwmon_dev);
	FUNC3(&client->dev.kobj, &smsc47m192_group);
	FUNC3(&client->dev.kobj, &smsc47m192_group_in4);

	FUNC2(data);

	return 0;
}