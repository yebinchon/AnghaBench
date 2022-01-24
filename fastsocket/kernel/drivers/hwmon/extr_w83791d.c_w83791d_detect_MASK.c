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
struct i2c_client {unsigned short addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  W83791D_REG_BANK ; 
 int /*<<< orphan*/  W83791D_REG_CHIPMAN ; 
 int /*<<< orphan*/  W83791D_REG_CONFIG ; 
 int /*<<< orphan*/  W83791D_REG_I2C_ADDR ; 
 int /*<<< orphan*/  W83791D_REG_WCHIPID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int w83791d ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client, int kind,
			  struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	int val1, val2;
	unsigned short address = client->addr;

	if (!FUNC2(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		return -ENODEV;
	}

	/* The w83791d may be stuck in some other bank than bank 0. This may
	   make reading other information impossible. Specify a force=...
	   parameter, and the Winbond will be reset to the right bank. */
	if (kind < 0) {
		if (FUNC4(client, W83791D_REG_CONFIG) & 0x80) {
			return -ENODEV;
		}
		val1 = FUNC4(client, W83791D_REG_BANK);
		val2 = FUNC4(client, W83791D_REG_CHIPMAN);
		/* Check for Winbond ID if in bank 0 */
		if (!(val1 & 0x07)) {
			/* yes it is Bank0 */
			if (((!(val1 & 0x80)) && (val2 != 0xa3)) ||
			    ((val1 & 0x80) && (val2 != 0x5c))) {
				return -ENODEV;
			}
		}
		/* If Winbond chip, address of chip and W83791D_REG_I2C_ADDR
		   should match */
		if (FUNC4(client, W83791D_REG_I2C_ADDR) != address) {
			return -ENODEV;
		}
	}

	/* We either have a force parameter or we have reason to
	   believe it is a Winbond chip. Either way, we want bank 0 and
	   Vendor ID high byte */
	val1 = FUNC4(client, W83791D_REG_BANK) & 0x78;
	FUNC5(client, W83791D_REG_BANK, val1 | 0x80);

	/* Verify it is a Winbond w83791d */
	if (kind <= 0) {
		/* get vendor ID */
		val2 = FUNC4(client, W83791D_REG_CHIPMAN);
		if (val2 != 0x5c) {	/* the vendor is NOT Winbond */
			return -ENODEV;
		}
		val1 = FUNC4(client, W83791D_REG_WCHIPID);
		if (val1 == 0x71) {
			kind = w83791d;
		} else {
			if (kind == 0)
				FUNC0(&adapter->dev,
					"w83791d: Ignoring 'force' parameter "
					"for unknown chip at adapter %d, "
					"address 0x%02x\n",
					FUNC1(adapter), address);
			return -ENODEV;
		}
	}

	FUNC3(info->type, "w83791d", I2C_NAME_SIZE);

	return 0;
}