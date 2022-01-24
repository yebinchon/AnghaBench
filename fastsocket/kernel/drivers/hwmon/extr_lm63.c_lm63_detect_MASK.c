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
 int /*<<< orphan*/  LM63_REG_ALERT_MASK ; 
 int /*<<< orphan*/  LM63_REG_ALERT_STATUS ; 
 int /*<<< orphan*/  LM63_REG_CHIP_ID ; 
 int /*<<< orphan*/  LM63_REG_CONFIG1 ; 
 int /*<<< orphan*/  LM63_REG_CONFIG2 ; 
 int /*<<< orphan*/  LM63_REG_MAN_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int lm63 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *new_client, int kind,
		       struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = new_client->adapter;

	if (!FUNC1(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	if (kind < 0) { /* must identify */
		u8 man_id, chip_id, reg_config1, reg_config2;
		u8 reg_alert_status, reg_alert_mask;

		man_id = FUNC2(new_client,
			 LM63_REG_MAN_ID);
		chip_id = FUNC2(new_client,
			  LM63_REG_CHIP_ID);
		reg_config1 = FUNC2(new_client,
			      LM63_REG_CONFIG1);
		reg_config2 = FUNC2(new_client,
			      LM63_REG_CONFIG2);
		reg_alert_status = FUNC2(new_client,
				   LM63_REG_ALERT_STATUS);
		reg_alert_mask = FUNC2(new_client,
				 LM63_REG_ALERT_MASK);

		if (man_id == 0x01 /* National Semiconductor */
		 && chip_id == 0x41 /* LM63 */
		 && (reg_config1 & 0x18) == 0x00
		 && (reg_config2 & 0xF8) == 0x00
		 && (reg_alert_status & 0x20) == 0x00
		 && (reg_alert_mask & 0xA4) == 0xA4) {
			kind = lm63;
		} else { /* failed */
			FUNC0(&adapter->dev, "Unsupported chip "
				"(man_id=0x%02X, chip_id=0x%02X).\n",
				man_id, chip_id);
			return -ENODEV;
		}
	}

	FUNC3(info->type, "lm63", I2C_NAME_SIZE);

	return 0;
}