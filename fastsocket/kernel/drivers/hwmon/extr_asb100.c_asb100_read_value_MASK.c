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
typedef  int u16 ;
struct i2c_client {int dummy; } ;
struct asb100_data {int /*<<< orphan*/  lock; struct i2c_client** lm75; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASB100_REG_BANK ; 
 struct asb100_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client, u16 reg)
{
	struct asb100_data *data = FUNC0(client);
	struct i2c_client *cl;
	int res, bank;

	FUNC4(&data->lock);

	bank = (reg >> 8) & 0x0f;
	if (bank > 2)
		/* switch banks */
		FUNC3(client, ASB100_REG_BANK, bank);

	if (bank == 0 || bank > 2) {
		res = FUNC1(client, reg & 0xff);
	} else {
		/* switch to subclient */
		cl = data->lm75[bank - 1];

		/* convert from ISA to LM75 I2C addresses */
		switch (reg & 0xff) {
		case 0x50: /* TEMP */
			res = FUNC6(FUNC2(cl, 0));
			break;
		case 0x52: /* CONFIG */
			res = FUNC1(cl, 1);
			break;
		case 0x53: /* HYST */
			res = FUNC6(FUNC2(cl, 2));
			break;
		case 0x55: /* MAX */
		default:
			res = FUNC6(FUNC2(cl, 3));
			break;
		}
	}

	if (bank > 2)
		FUNC3(client, ASB100_REG_BANK, 0);

	FUNC5(&data->lock);

	return res;
}