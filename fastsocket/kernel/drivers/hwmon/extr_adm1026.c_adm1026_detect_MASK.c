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
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ADM1026_COMPANY_ANALOG_DEV ; 
 int /*<<< orphan*/  ADM1026_REG_COMPANY ; 
 int /*<<< orphan*/  ADM1026_REG_VERSTEP ; 
 int ADM1026_VERSTEP_ADM1026 ; 
 int ADM1026_VERSTEP_GENERIC ; 
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int adm1026 ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int any_chip ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client, int kind,
			  struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	int address = client->addr;
	int company, verstep;

	if (!FUNC4(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		/* We need to be able to do byte I/O */
		return -ENODEV;
	};

	/* Now, we do the remaining detection. */

	company = FUNC0(client, ADM1026_REG_COMPANY);
	verstep = FUNC0(client, ADM1026_REG_VERSTEP);

	FUNC1(&adapter->dev, "Detecting device at %d,0x%02x with"
		" COMPANY: 0x%02x and VERSTEP: 0x%02x\n",
		FUNC3(client->adapter), client->addr,
		company, verstep);

	/* If auto-detecting, Determine the chip type. */
	if (kind <= 0) {
		FUNC1(&adapter->dev, "Autodetecting device at %d,0x%02x "
			"...\n", FUNC3(adapter), address);
		if (company == ADM1026_COMPANY_ANALOG_DEV
		    && verstep == ADM1026_VERSTEP_ADM1026) {
			kind = adm1026;
		} else if (company == ADM1026_COMPANY_ANALOG_DEV
			&& (verstep & 0xf0) == ADM1026_VERSTEP_GENERIC) {
			FUNC2(&adapter->dev, "Unrecognized stepping "
				"0x%02x. Defaulting to ADM1026.\n", verstep);
			kind = adm1026;
		} else if ((verstep & 0xf0) == ADM1026_VERSTEP_GENERIC) {
			FUNC2(&adapter->dev, "Found version/stepping "
				"0x%02x. Assuming generic ADM1026.\n",
				verstep);
			kind = any_chip;
		} else {
			FUNC1(&adapter->dev, "Autodetection failed\n");
			/* Not an ADM1026 ... */
			if (kind == 0) { /* User used force=x,y */
				FUNC2(&adapter->dev, "Generic ADM1026 not "
					"found at %d,0x%02x.  Try "
					"force_adm1026.\n",
					FUNC3(adapter), address);
			}
			return -ENODEV;
		}
	}
	FUNC5(info->type, "adm1026", I2C_NAME_SIZE);

	return 0;
}