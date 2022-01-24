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
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int FUNC2 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *new_client, int kind,
		       struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = new_client->adapter;
	int i;

	if (!FUNC0(adapter, I2C_FUNC_SMBUS_BYTE_DATA |
				     I2C_FUNC_SMBUS_WORD_DATA))
		return -ENODEV;

	/* Now, we do the remaining detection. There is no identification-
	   dedicated register so we have to rely on several tricks:
	   unused bits, registers cycling over 8-address boundaries,
	   addresses 0x04-0x07 returning the last read value.
	   The cycling+unused addresses combination is not tested,
	   since it would significantly slow the detection down and would
	   hardly add any value. */
	if (kind < 0) {
		int cur, conf, hyst, os;

		/* Unused addresses */
		cur = FUNC2(new_client, 0);
		conf = FUNC1(new_client, 1);
		hyst = FUNC2(new_client, 2);
		if (FUNC2(new_client, 4) != hyst
		 || FUNC2(new_client, 5) != hyst
		 || FUNC2(new_client, 6) != hyst
		 || FUNC2(new_client, 7) != hyst)
			return -ENODEV;
		os = FUNC2(new_client, 3);
		if (FUNC2(new_client, 4) != os
		 || FUNC2(new_client, 5) != os
		 || FUNC2(new_client, 6) != os
		 || FUNC2(new_client, 7) != os)
			return -ENODEV;

		/* Unused bits */
		if (conf & 0xe0)
			return -ENODEV;

		/* Addresses cycling */
		for (i = 8; i < 0xff; i += 8)
			if (FUNC1(new_client, i + 1) != conf
			 || FUNC2(new_client, i + 2) != hyst
			 || FUNC2(new_client, i + 3) != os)
				return -ENODEV;
	}

	/* NOTE: we treat "force=..." and "force_lm75=..." the same.
	 * Only new-style driver binding distinguishes chip types.
	 */
	FUNC3(info->type, "lm75", I2C_NAME_SIZE);

	return 0;
}