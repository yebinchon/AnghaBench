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
 int /*<<< orphan*/  LM83_REG_R_CHIP_ID ; 
 int /*<<< orphan*/  LM83_REG_R_CONFIG ; 
 int /*<<< orphan*/  LM83_REG_R_MAN_ID ; 
 int /*<<< orphan*/  LM83_REG_R_STATUS1 ; 
 int /*<<< orphan*/  LM83_REG_R_STATUS2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int lm82 ; 
 int lm83 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *new_client, int kind,
		       struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = new_client->adapter;
	const char *name = "";

	if (!FUNC2(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	/* Now we do the detection and identification. A negative kind
	 * means that the driver was loaded with no force parameter
	 * (default), so we must both detect and identify the chip
	 * (actually there is only one possible kind of chip for now, LM83).
	 * A zero kind means that the driver was loaded with the force
	 * parameter, the detection step shall be skipped. A positive kind
	 * means that the driver was loaded with the force parameter and a
	 * given kind of chip is requested, so both the detection and the
	 * identification steps are skipped. */

	/* Default to an LM83 if forced */
	if (kind == 0)
		kind = lm83;

	if (kind < 0) { /* detection */
		if (((FUNC3(new_client, LM83_REG_R_STATUS1)
		    & 0xA8) != 0x00) ||
		    ((FUNC3(new_client, LM83_REG_R_STATUS2)
		    & 0x48) != 0x00) ||
		    ((FUNC3(new_client, LM83_REG_R_CONFIG)
		    & 0x41) != 0x00)) {
			FUNC0(&adapter->dev,
				"LM83 detection failed at 0x%02x.\n",
				new_client->addr);
			return -ENODEV;
		}
	}

	if (kind <= 0) { /* identification */
		u8 man_id, chip_id;

		man_id = FUNC3(new_client,
		    LM83_REG_R_MAN_ID);
		chip_id = FUNC3(new_client,
		    LM83_REG_R_CHIP_ID);

		if (man_id == 0x01) { /* National Semiconductor */
			if (chip_id == 0x03) {
				kind = lm83;
			} else
			if (chip_id == 0x01) {
				kind = lm82;
			}
		}

		if (kind <= 0) { /* identification failed */
			FUNC1(&adapter->dev,
			    "Unsupported chip (man_id=0x%02X, "
			    "chip_id=0x%02X).\n", man_id, chip_id);
			return -ENODEV;
		}
	}

	if (kind == lm83) {
		name = "lm83";
	} else
	if (kind == lm82) {
		name = "lm82";
	}

	FUNC4(info->type, name, I2C_NAME_SIZE);

	return 0;
}