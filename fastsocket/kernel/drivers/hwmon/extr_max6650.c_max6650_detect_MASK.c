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
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  MAX6650_REG_ALARM ; 
 int /*<<< orphan*/  MAX6650_REG_ALARM_EN ; 
 int /*<<< orphan*/  MAX6650_REG_CONFIG ; 
 int /*<<< orphan*/  MAX6650_REG_COUNT ; 
 int /*<<< orphan*/  MAX6650_REG_GPIO_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, int kind,
			  struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	int address = client->addr;

	FUNC0(&adapter->dev, "max6650_detect called, kind = %d\n", kind);

	if (!FUNC2(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC0(&adapter->dev, "max6650: I2C bus doesn't support "
					"byte read mode, skipping.\n");
		return -ENODEV;
	}

	/*
	 * Now we do the remaining detection. A negative kind means that
	 * the driver was loaded with no force parameter (default), so we
	 * must both detect and identify the chip (actually there is only
	 * one possible kind of chip for now, max6650). A zero kind means that
	 * the driver was loaded with the force parameter, the detection
	 * step shall be skipped. A positive kind means that the driver
	 * was loaded with the force parameter and a given kind of chip is
	 * requested, so both the detection and the identification steps
	 * are skipped.
	 *
	 * Currently I can find no way to distinguish between a MAX6650 and
	 * a MAX6651. This driver has only been tried on the former.
	 */

	if ((kind < 0) &&
	   (  (FUNC3(client, MAX6650_REG_CONFIG) & 0xC0)
	    ||(FUNC3(client, MAX6650_REG_GPIO_STAT) & 0xE0)
	    ||(FUNC3(client, MAX6650_REG_ALARM_EN) & 0xE0)
	    ||(FUNC3(client, MAX6650_REG_ALARM) & 0xE0)
	    ||(FUNC3(client, MAX6650_REG_COUNT) & 0xFC))) {
		FUNC0(&adapter->dev,
			"max6650: detection failed at 0x%02x.\n", address);
		return -ENODEV;
	}

	FUNC1(&adapter->dev, "max6650: chip found at 0x%02x.\n", address);

	FUNC4(info->type, "max6650", I2C_NAME_SIZE);

	return 0;
}