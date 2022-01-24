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
struct i2c_client {int /*<<< orphan*/  addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  MAX1619_REG_R_CHIP_ID ; 
 int /*<<< orphan*/  MAX1619_REG_R_CONFIG ; 
 int /*<<< orphan*/  MAX1619_REG_R_CONVRATE ; 
 int /*<<< orphan*/  MAX1619_REG_R_MAN_ID ; 
 int /*<<< orphan*/  MAX1619_REG_R_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int max1619 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *new_client, int kind,
			  struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = new_client->adapter;
	u8 reg_config=0, reg_convrate=0, reg_status=0;

	if (!FUNC2(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	/*
	 * Now we do the remaining detection. A negative kind means that
	 * the driver was loaded with no force parameter (default), so we
	 * must both detect and identify the chip. A zero kind means that
	 * the driver was loaded with the force parameter, the detection
	 * step shall be skipped. A positive kind means that the driver
	 * was loaded with the force parameter and a given kind of chip is
	 * requested, so both the detection and the identification steps
	 * are skipped.
	 */
	if (kind < 0) { /* detection */
		reg_config = FUNC3(new_client,
			      MAX1619_REG_R_CONFIG);
		reg_convrate = FUNC3(new_client,
			       MAX1619_REG_R_CONVRATE);
		reg_status = FUNC3(new_client,
				MAX1619_REG_R_STATUS);
		if ((reg_config & 0x03) != 0x00
		 || reg_convrate > 0x07 || (reg_status & 0x61 ) !=0x00) {
			FUNC0(&adapter->dev,
				"MAX1619 detection failed at 0x%02x.\n",
				new_client->addr);
			return -ENODEV;
		}
	}

	if (kind <= 0) { /* identification */
		u8 man_id, chip_id;
	
		man_id = FUNC3(new_client,
			 MAX1619_REG_R_MAN_ID);
		chip_id = FUNC3(new_client,
			  MAX1619_REG_R_CHIP_ID);
		
		if ((man_id == 0x4D) && (chip_id == 0x04))
			kind = max1619;

		if (kind <= 0) { /* identification failed */
			FUNC1(&adapter->dev,
			    "Unsupported chip (man_id=0x%02X, "
			    "chip_id=0x%02X).\n", man_id, chip_id);
			return -ENODEV;
		}
	}

	FUNC4(info->type, "max1619", I2C_NAME_SIZE);

	return 0;
}