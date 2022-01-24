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
typedef  int u16 ;
struct i2c_client {int /*<<< orphan*/  addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  W83L786NG_REG_CHIP_ID ; 
 int /*<<< orphan*/  W83L786NG_REG_CONFIG ; 
 int /*<<< orphan*/  W83L786NG_REG_MAN_ID1 ; 
 int /*<<< orphan*/  W83L786NG_REG_MAN_ID2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int w83l786ng ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct i2c_client *client, int kind,
		 struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;

	if (!FUNC2(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		return -ENODEV;
	}

	/*
	 * Now we do the remaining detection. A negative kind means that
	 * the driver was loaded with no force parameter (default), so we
	 * must both detect and identify the chip (actually there is only
	 * one possible kind of chip for now, W83L786NG). A zero kind means
	 * that the driver was loaded with the force parameter, the detection
	 * step shall be skipped. A positive kind means that the driver
	 * was loaded with the force parameter and a given kind of chip is
	 * requested, so both the detection and the identification steps
	 * are skipped.
	 */
	if (kind < 0) { /* detection */
		if (((FUNC4(client,
		    W83L786NG_REG_CONFIG) & 0x80) != 0x00)) {
			FUNC0(&adapter->dev,
				"W83L786NG detection failed at 0x%02x.\n",
				client->addr);
			return -ENODEV;
		}
	}

	if (kind <= 0) { /* identification */
		u16 man_id;
		u8 chip_id;

		man_id = (FUNC4(client,
		    W83L786NG_REG_MAN_ID1) << 8) +
		    FUNC4(client, W83L786NG_REG_MAN_ID2);
		chip_id = FUNC4(client, W83L786NG_REG_CHIP_ID);

		if (man_id == 0x5CA3) { /* Winbond */
			if (chip_id == 0x80) { /* W83L786NG */
				kind = w83l786ng;
			}
		}

		if (kind <= 0) { /* identification failed */
			FUNC1(&adapter->dev,
			    "Unsupported chip (man_id=0x%04X, "
			    "chip_id=0x%02X).\n", man_id, chip_id);
			return -ENODEV;
		}
	}

	FUNC3(info->type, "w83l786ng", I2C_NAME_SIZE);

	return 0;
}