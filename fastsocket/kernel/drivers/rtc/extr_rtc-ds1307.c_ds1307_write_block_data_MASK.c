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
typedef  size_t u8 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  size_t s32 ;

/* Variables and functions */
 int BLOCK_DATA_MAX_TRIES ; 
 size_t EIO ; 
 int I2C_SMBUS_BLOCK_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC2 (struct i2c_client*,size_t,size_t,size_t*) ; 
 size_t FUNC3 (struct i2c_client*,size_t,size_t const) ; 
 scalar_t__ FUNC4 (size_t*,size_t const*,size_t) ; 

__attribute__((used)) static s32 FUNC5(struct i2c_client *client, u8 command,
				   u8 length, const u8 *values)
{
	u8 currvalues[I2C_SMBUS_BLOCK_MAX];
	int tries = 0;

	FUNC0(&client->dev, "ds1307_write_block_data (length=%d)\n", length);
	do {
		s32 i, ret;

		if (++tries > BLOCK_DATA_MAX_TRIES) {
			FUNC1(&client->dev,
				"ds1307_write_block_data failed\n");
			return -EIO;
		}
		for (i = 0; i < length; i++) {
			ret = FUNC3(client, command + i,
							values[i]);
			if (ret < 0)
				return ret;
		}
		ret = FUNC2(client, command, length,
						  currvalues);
		if (ret < 0)
			return ret;
	} while (FUNC4(currvalues, values, length));
	return length;
}