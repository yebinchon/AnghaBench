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
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  LM80_REG_ALARM2 ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, int kind,
		       struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	int i, cur;

	if (!FUNC0(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	/* Now, we do the remaining detection. It is lousy. */
	if (FUNC2(client, LM80_REG_ALARM2) & 0xc0)
		return -ENODEV;
	for (i = 0x2a; i <= 0x3d; i++) {
		cur = FUNC1(client, i);
		if ((FUNC1(client, i + 0x40) != cur)
		 || (FUNC1(client, i + 0x80) != cur)
		 || (FUNC1(client, i + 0xc0) != cur))
		    return -ENODEV;
	}

	FUNC3(info->type, "lm80", I2C_NAME_SIZE);

	return 0;
}