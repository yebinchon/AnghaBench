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
 scalar_t__ DEFAULT_REVISION ; 
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  LM95241_REG_R_CHIP_ID ; 
 int /*<<< orphan*/  LM95241_REG_R_MAN_ID ; 
 scalar_t__ MANUFACTURER_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int lm95241 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *new_client, int kind,
			  struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = new_client->adapter;
	int address = new_client->addr;
	const char *name = "";

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
	if (kind < 0) {	/* detection */
		if ((FUNC3(new_client, LM95241_REG_R_MAN_ID)
		     != MANUFACTURER_ID)
		|| (FUNC3(new_client, LM95241_REG_R_CHIP_ID)
		    < DEFAULT_REVISION)) {
			FUNC0(&adapter->dev,
				"LM95241 detection failed at 0x%02x.\n",
				address);
			return -ENODEV;
		}
	}

	if (kind <= 0) { /* identification */
		if ((FUNC3(new_client, LM95241_REG_R_MAN_ID)
		     == MANUFACTURER_ID)
		&& (FUNC3(new_client, LM95241_REG_R_CHIP_ID)
		    >= DEFAULT_REVISION)) {

			kind = lm95241;

			if (kind <= 0) { /* identification failed */
				FUNC1(&adapter->dev, "Unsupported chip\n");
				return -ENODEV;
			}
		}
	}

	/* Fill the i2c board info */
	if (kind == lm95241)
		name = "lm95241";
	FUNC4(info->type, name, I2C_NAME_SIZE);
	return 0;
}