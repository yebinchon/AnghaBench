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
 int /*<<< orphan*/  LM87_REG_COMPANY_ID ; 
 int /*<<< orphan*/  LM87_REG_CONFIG ; 
 int /*<<< orphan*/  LM87_REG_REVISION ; 
 int adm1024 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int lm87 ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *new_client, int kind,
		       struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = new_client->adapter;
	static const char *names[] = { "lm87", "adm1024" };

	if (!FUNC1(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	/* Default to an LM87 if forced */
	if (kind == 0)
		kind = lm87;

	/* Now, we do the remaining detection. */
	if (kind < 0) {
		u8 cid = FUNC2(new_client, LM87_REG_COMPANY_ID);
		u8 rev = FUNC2(new_client, LM87_REG_REVISION);

		if (cid == 0x02			/* National Semiconductor */
		 && (rev >= 0x01 && rev <= 0x08))
			kind = lm87;
		else if (cid == 0x41		/* Analog Devices */
		      && (rev & 0xf0) == 0x10)
			kind = adm1024;

		if (kind < 0
		 || (FUNC2(new_client, LM87_REG_CONFIG) & 0x80)) {
			FUNC0(&adapter->dev,
				"LM87 detection failed at 0x%02x.\n",
				new_client->addr);
			return -ENODEV;
		}
	}

	FUNC3(info->type, names[kind - 1], I2C_NAME_SIZE);

	return 0;
}