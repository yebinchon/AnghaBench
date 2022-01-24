#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {int dummy; } ;
struct max1586_platform_data {int v3_gain; int num_subdevs; TYPE_1__* subdevs; } ;
struct max1586_data {int min_uV; int max_uV; struct regulator_dev** rdev; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_9__ {struct max1586_platform_data* platform_data; } ;
struct i2c_client {TYPE_3__ dev; } ;
struct TYPE_8__ {int name; } ;
struct TYPE_7__ {int id; int /*<<< orphan*/  platform_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int MAX1586_V3 ; 
 int MAX1586_V3_MAX_UV ; 
 int MAX1586_V3_MIN_UV ; 
 int MAX1586_V6 ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct regulator_dev**) ; 
 int /*<<< orphan*/  FUNC5 (struct max1586_data*) ; 
 struct max1586_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* max1586_reg ; 
 struct regulator_dev* FUNC7 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,struct max1586_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			      const struct i2c_device_id *i2c_id)
{
	struct regulator_dev **rdev;
	struct max1586_platform_data *pdata = client->dev.platform_data;
	struct max1586_data *max1586;
	int i, id, ret = -ENOMEM;

	max1586 = FUNC6(sizeof(struct max1586_data) +
			sizeof(struct regulator_dev *) * (MAX1586_V6 + 1),
			GFP_KERNEL);
	if (!max1586)
		goto out;

	max1586->client = client;

	if (!pdata->v3_gain) {
		ret = -EINVAL;
		goto out_unmap;
	}
	max1586->min_uV = MAX1586_V3_MIN_UV / 1000 * pdata->v3_gain / 1000;
	max1586->max_uV = MAX1586_V3_MAX_UV / 1000 * pdata->v3_gain / 1000;

	rdev = max1586->rdev;
	for (i = 0; i < pdata->num_subdevs && i <= MAX1586_V6; i++) {
		id = pdata->subdevs[i].id;
		if (!pdata->subdevs[i].platform_data)
			continue;
		if (id < MAX1586_V3 || id > MAX1586_V6) {
			FUNC2(&client->dev, "invalid regulator id %d\n", id);
			goto err;
		}
		rdev[i] = FUNC7(&max1586_reg[id], &client->dev,
					     pdata->subdevs[i].platform_data,
					     max1586);
		if (FUNC0(rdev[i])) {
			ret = FUNC1(rdev[i]);
			FUNC2(&client->dev, "failed to register %s\n",
				max1586_reg[id].name);
			goto err;
		}
	}

	FUNC4(client, rdev);
	FUNC3(&client->dev, "Maxim 1586 regulator driver loaded\n");
	return 0;

err:
	while (--i >= 0)
		FUNC8(rdev[i]);
out_unmap:
	FUNC5(max1586);
out:
	return ret;
}