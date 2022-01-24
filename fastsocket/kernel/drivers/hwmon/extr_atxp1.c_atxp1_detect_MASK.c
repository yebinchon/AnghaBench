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
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct i2c_client *new_client, int kind,
			struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = new_client->adapter;

	u8 temp;

	if (!FUNC1(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	/* Detect ATXP1, checking if vendor ID registers are all zero */
	if (!((FUNC2(new_client, 0x3e) == 0) &&
	     (FUNC2(new_client, 0x3f) == 0) &&
	     (FUNC2(new_client, 0xfe) == 0) &&
	     (FUNC2(new_client, 0xff) == 0)))
		return -ENODEV;

	/* No vendor ID, now checking if registers 0x10,0x11 (non-existent)
	 * showing the same as register 0x00 */
	temp = FUNC2(new_client, 0x00);

	if (!((FUNC2(new_client, 0x10) == temp) &&
	      (FUNC2(new_client, 0x11) == temp)))
		return -ENODEV;

	/* Get VRM */
	temp = FUNC4();

	if ((temp != 90) && (temp != 91)) {
		FUNC0(&adapter->dev, "atxp1: Not supporting VRM %d.%d\n",
				temp / 10, temp % 10);
		return -ENODEV;
	}

	FUNC3(info->type, "atxp1", I2C_NAME_SIZE);

	return 0;
}