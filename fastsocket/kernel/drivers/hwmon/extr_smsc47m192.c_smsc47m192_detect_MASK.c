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
struct i2c_client {int /*<<< orphan*/  addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  SMSC47M192_REG_COMPANY_ID ; 
 int /*<<< orphan*/  SMSC47M192_REG_VERSION ; 
 int /*<<< orphan*/  SMSC47M192_REG_VID ; 
 int /*<<< orphan*/  SMSC47M192_REG_VID4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, int kind,
			     struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	int version;

	if (!FUNC2(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	/* Detection criteria from sensors_detect script */
	if (kind < 0) {
		if (FUNC3(client,
				SMSC47M192_REG_COMPANY_ID) == 0x55
		 && ((version = FUNC3(client,
				SMSC47M192_REG_VERSION)) & 0xf0) == 0x20
		 && (FUNC3(client,
				SMSC47M192_REG_VID) & 0x70) == 0x00
		 && (FUNC3(client,
				SMSC47M192_REG_VID4) & 0xfe) == 0x80) {
			FUNC1(&adapter->dev,
				 "found SMSC47M192 or compatible, "
				 "version 2, stepping A%d\n", version & 0x0f);
		} else {
			FUNC0(&adapter->dev,
				"SMSC47M192 detection failed at 0x%02x\n",
				client->addr);
			return -ENODEV;
		}
	}

	FUNC4(info->type, "smsc47m192", I2C_NAME_SIZE);

	return 0;
}