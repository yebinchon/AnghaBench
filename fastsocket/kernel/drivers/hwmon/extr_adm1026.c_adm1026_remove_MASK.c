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
struct adm1026_data {int config1; int /*<<< orphan*/  hwmon_dev; } ;

/* Variables and functions */
 int CFG1_AIN8_9 ; 
 int /*<<< orphan*/  adm1026_group ; 
 int /*<<< orphan*/  adm1026_group_in8_9 ; 
 int /*<<< orphan*/  adm1026_group_temp3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct adm1026_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct adm1026_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct adm1026_data *data = FUNC1(client);
	FUNC0(data->hwmon_dev);
	FUNC3(&client->dev.kobj, &adm1026_group);
	if (data->config1 & CFG1_AIN8_9)
		FUNC3(&client->dev.kobj, &adm1026_group_in8_9);
	else
		FUNC3(&client->dev.kobj, &adm1026_group_temp3);
	FUNC2(data);
	return 0;
}