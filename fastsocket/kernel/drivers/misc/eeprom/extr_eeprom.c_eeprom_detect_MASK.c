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
struct i2c_adapter {int class; } ;

/* Variables and functions */
 int ENODEV ; 
 int I2C_CLASS_SPD ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_I2C_BLOCK ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_WORD_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client, int kind,
			 struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;

	/* EDID EEPROMs are often 24C00 EEPROMs, which answer to all
	   addresses 0x50-0x57, but we only care about 0x50. So decline
	   attaching to addresses >= 0x51 on DDC buses */
	if (!(adapter->class & I2C_CLASS_SPD) && client->addr >= 0x51)
		return -ENODEV;

	/* There are four ways we can read the EEPROM data:
	   (1) I2C block reads (faster, but unsupported by most adapters)
	   (2) Word reads (128% overhead)
	   (3) Consecutive byte reads (88% overhead, unsafe)
	   (4) Regular byte data reads (265% overhead)
	   The third and fourth methods are not implemented by this driver
	   because all known adapters support one of the first two. */
	if (!FUNC0(adapter, I2C_FUNC_SMBUS_READ_WORD_DATA)
	 && !FUNC0(adapter, I2C_FUNC_SMBUS_READ_I2C_BLOCK))
		return -ENODEV;

	FUNC1(info->type, "eeprom", I2C_NAME_SIZE);

	return 0;
}