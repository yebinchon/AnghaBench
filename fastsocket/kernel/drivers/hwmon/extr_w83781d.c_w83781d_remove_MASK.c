#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct w83781d_data {scalar_t__* lm75; int /*<<< orphan*/  hwmon_dev; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct w83781d_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct w83781d_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  w83781d_group ; 
 int /*<<< orphan*/  w83781d_group_opt ; 

__attribute__((used)) static int
FUNC6(struct i2c_client *client)
{
	struct w83781d_data *data = FUNC1(client);
	struct device *dev = &client->dev;

	FUNC0(data->hwmon_dev);

	FUNC5(&dev->kobj, &w83781d_group);
	FUNC5(&dev->kobj, &w83781d_group_opt);

	if (data->lm75[0])
		FUNC3(data->lm75[0]);
	if (data->lm75[1])
		FUNC3(data->lm75[1]);

	FUNC2(client, NULL);
	FUNC4(data);

	return 0;
}