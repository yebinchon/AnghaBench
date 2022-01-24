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
typedef  int u8 ;
struct regulator_dev {int dummy; } ;
struct max1586_data {unsigned int max_uV; unsigned int min_uV; struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int I2C_V3_SELECT ; 
 int MAX1586_V3_MAX_VSEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int FUNC2 (struct max1586_data*,unsigned int) ; 
 struct max1586_data* FUNC3 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *rdev, int min_uV, int max_uV)
{
	struct max1586_data *max1586 = FUNC3(rdev);
	struct i2c_client *client = max1586->client;
	unsigned range_uV = max1586->max_uV - max1586->min_uV;
	unsigned selector;
	u8 v3_prog;

	if (min_uV > max1586->max_uV || max_uV < max1586->min_uV)
		return -EINVAL;
	if (min_uV < max1586->min_uV)
		min_uV = max1586->min_uV;

	selector = ((min_uV - max1586->min_uV) * MAX1586_V3_MAX_VSEL +
			range_uV - 1) / range_uV;
	if (FUNC2(max1586, selector) > max_uV)
		return -EINVAL;

	FUNC0(&client->dev, "changing voltage v3 to %dmv\n",
		FUNC2(max1586, selector) / 1000);

	v3_prog = I2C_V3_SELECT | (u8) selector;
	return FUNC1(client, v3_prog);
}