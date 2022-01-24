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
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DS1621_REG_CONF ; 
 int DS1621_REG_CONFIG_NVB ; 
 int /*<<< orphan*/ * DS1621_REG_TEMP ; 
 int ENODEV ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, int kind,
			 struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	int conf, temp;
	int i;

	if (!FUNC1(adapter, I2C_FUNC_SMBUS_BYTE_DATA 
				     | I2C_FUNC_SMBUS_WORD_DATA 
				     | I2C_FUNC_SMBUS_WRITE_BYTE))
		return -ENODEV;

	/* Now, we do the remaining detection. It is lousy. */
	if (kind < 0) {
		/* The NVB bit should be low if no EEPROM write has been 
		   requested during the latest 10ms, which is highly 
		   improbable in our case. */
		conf = FUNC2(client, DS1621_REG_CONF);
		if (conf < 0 || conf & DS1621_REG_CONFIG_NVB)
			return -ENODEV;
		/* The 7 lowest bits of a temperature should always be 0. */
		for (i = 0; i < FUNC0(DS1621_REG_TEMP); i++) {
			temp = FUNC3(client,
							DS1621_REG_TEMP[i]);
			if (temp < 0 || (temp & 0x7f00))
				return -ENODEV;
		}
	}

	FUNC4(info->type, "ds1621", I2C_NAME_SIZE);

	return 0;
}