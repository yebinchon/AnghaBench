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
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  LM92_REG_CONFIG ; 
 int /*<<< orphan*/  LM92_REG_MAN_ID ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int lm92 ; 
 scalar_t__ FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *new_client, int kind,
		       struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = new_client->adapter;

	if (!FUNC0(adapter, I2C_FUNC_SMBUS_BYTE_DATA
					    | I2C_FUNC_SMBUS_WORD_DATA))
		return -ENODEV;

	/* A negative kind means that the driver was loaded with no force
	   parameter (default), so we must identify the chip. */
	if (kind < 0) {
		u8 config = FUNC1(new_client,
			     LM92_REG_CONFIG);
		u16 man_id = FUNC2(new_client,
			     LM92_REG_MAN_ID);

		if ((config & 0xe0) == 0x00
		 && man_id == 0x0180) {
			FUNC4("lm92: Found National Semiconductor LM92 chip\n");
	 		kind = lm92;
		} else
		if (FUNC3(new_client)) {
			FUNC4("lm92: Found Maxim MAX6635 chip\n");
			kind = lm92; /* No separate prefix */
		}
		else
			return -ENODEV;
	}

	FUNC5(info->type, "lm92", I2C_NAME_SIZE);

	return 0;
}