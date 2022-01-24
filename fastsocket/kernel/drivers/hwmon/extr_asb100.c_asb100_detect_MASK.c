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
struct i2c_client {int /*<<< orphan*/  addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASB100_REG_BANK ; 
 int /*<<< orphan*/  ASB100_REG_CHIPMAN ; 
 int /*<<< orphan*/  ASB100_REG_WCHIPID ; 
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int asb100 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client, int kind,
			 struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;

	if (!FUNC2(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC5("asb100.o: detect failed, "
				"smbus byte data not supported!\n");
		return -ENODEV;
	}

	/* The chip may be stuck in some other bank than bank 0. This may
	   make reading other information impossible. Specify a force=... or
	   force_*=... parameter, and the chip will be reset to the right
	   bank. */
	if (kind < 0) {

		int val1 = FUNC3(client, ASB100_REG_BANK);
		int val2 = FUNC3(client, ASB100_REG_CHIPMAN);

		/* If we're in bank 0 */
		if ((!(val1 & 0x07)) &&
				/* Check for ASB100 ID (low byte) */
				(((!(val1 & 0x80)) && (val2 != 0x94)) ||
				/* Check for ASB100 ID (high byte ) */
				((val1 & 0x80) && (val2 != 0x06)))) {
			FUNC5("asb100.o: detect failed, "
					"bad chip id 0x%02x!\n", val2);
			return -ENODEV;
		}

	} /* kind < 0 */

	/* We have either had a force parameter, or we have already detected
	   Winbond. Put it now into bank 0 and Vendor ID High Byte */
	FUNC4(client, ASB100_REG_BANK,
		(FUNC3(client, ASB100_REG_BANK) & 0x78)
		| 0x80);

	/* Determine the chip type. */
	if (kind <= 0) {
		int val1 = FUNC3(client, ASB100_REG_WCHIPID);
		int val2 = FUNC3(client, ASB100_REG_CHIPMAN);

		if ((val1 == 0x31) && (val2 == 0x06))
			kind = asb100;
		else {
			if (kind == 0)
				FUNC0(&adapter->dev, "ignoring "
					"'force' parameter for unknown chip "
					"at adapter %d, address 0x%02x.\n",
					FUNC1(adapter), client->addr);
			return -ENODEV;
		}
	}

	FUNC6(info->type, "asb100", I2C_NAME_SIZE);

	return 0;
}