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
struct w83781d_data {struct i2c_client** lm75; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  W83781D_REG_BANK ; 
 int FUNC0 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct w83781d_data *data, u16 reg)
{
	struct i2c_client *client = data->client;
	int res, bank;
	struct i2c_client *cl;

	bank = (reg >> 8) & 0x0f;
	if (bank > 2)
		/* switch banks */
		FUNC2(client, W83781D_REG_BANK,
					  bank);
	if (bank == 0 || bank > 2) {
		res = FUNC0(client, reg & 0xff);
	} else {
		/* switch to subclient */
		cl = data->lm75[bank - 1];
		/* convert from ISA to LM75 I2C addresses */
		switch (reg & 0xff) {
		case 0x50:	/* TEMP */
			res = FUNC3(FUNC1(cl, 0));
			break;
		case 0x52:	/* CONFIG */
			res = FUNC0(cl, 1);
			break;
		case 0x53:	/* HYST */
			res = FUNC3(FUNC1(cl, 2));
			break;
		case 0x55:	/* OVER */
		default:
			res = FUNC3(FUNC1(cl, 3));
			break;
		}
	}
	if (bank > 2)
		FUNC2(client, W83781D_REG_BANK, 0);

	return res;
}