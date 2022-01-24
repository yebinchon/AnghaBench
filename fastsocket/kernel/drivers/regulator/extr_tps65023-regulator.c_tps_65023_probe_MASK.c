#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tps_pmic {struct regulator_dev** rdev; struct i2c_client* client; TYPE_1__* desc; struct tps_info const** info; int /*<<< orphan*/  io_lock; } ;
struct tps_info {int /*<<< orphan*/  name; } ;
struct regulator_init_data {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct i2c_device_id {int /*<<< orphan*/  name; scalar_t__ driver_data; } ;
struct TYPE_5__ {struct regulator_init_data* platform_data; } ;
struct i2c_client {TYPE_2__ dev; int /*<<< orphan*/  adapter; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  type; int /*<<< orphan*/ * ops; int /*<<< orphan*/  n_voltages; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  REGULATOR_VOLTAGE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int TPS65023_DCDC_3 ; 
 int TPS65023_NUM_REGULATOR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct tps_pmic*) ; 
 int /*<<< orphan*/  FUNC5 (struct tps_pmic*) ; 
 struct tps_pmic* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * num_voltages ; 
 struct regulator_dev* FUNC8 (TYPE_1__*,TYPE_2__*,struct regulator_init_data*,struct tps_pmic*) ; 
 int /*<<< orphan*/  FUNC9 (struct regulator_dev*) ; 
 int /*<<< orphan*/  tps65023_dcdc_ops ; 
 int /*<<< orphan*/  tps65023_ldo_ops ; 

__attribute__((used)) static
int FUNC10(struct i2c_client *client, const struct i2c_device_id *id)
{
	static int desc_id;
	const struct tps_info *info = (void *)id->driver_data;
	struct regulator_init_data *init_data;
	struct regulator_dev *rdev;
	struct tps_pmic *tps;
	int i;

	if (!FUNC3(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	/**
	 * init_data points to array of regulator_init structures
	 * coming from the board-evm file.
	 */
	init_data = client->dev.platform_data;

	if (!init_data)
		return -EIO;

	tps = FUNC6(sizeof(*tps), GFP_KERNEL);
	if (!tps)
		return -ENOMEM;

	FUNC7(&tps->io_lock);

	/* common for all regulators */
	tps->client = client;

	for (i = 0; i < TPS65023_NUM_REGULATOR; i++, info++, init_data++) {
		/* Store regulator specific information */
		tps->info[i] = info;

		tps->desc[i].name = info->name;
		tps->desc[i].id = desc_id++;
		tps->desc[i].n_voltages = num_voltages[i];
		tps->desc[i].ops = (i > TPS65023_DCDC_3 ?
					&tps65023_ldo_ops : &tps65023_dcdc_ops);
		tps->desc[i].type = REGULATOR_VOLTAGE;
		tps->desc[i].owner = THIS_MODULE;

		/* Register the regulators */
		rdev = FUNC8(&tps->desc[i], &client->dev,
								init_data, tps);
		if (FUNC0(rdev)) {
			FUNC2(&client->dev, "failed to register %s\n",
				id->name);

			/* Unregister */
			while (i)
				FUNC9(tps->rdev[--i]);

			tps->client = NULL;

			/* clear the client data in i2c */
			FUNC4(client, NULL);
			FUNC5(tps);
			return FUNC1(rdev);
		}

		/* Save regulator for cleanup */
		tps->rdev[i] = rdev;
	}

	FUNC4(client, tps);

	return 0;
}