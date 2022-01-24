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
typedef  int u32 ;
struct atl1c_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atl1c_hw*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct atl1c_hw*,int /*<<< orphan*/ ,int) ; 
 int EEPROM_CTRL_ADDR_MASK ; 
 int EEPROM_CTRL_ADDR_SHIFT ; 
 int EEPROM_CTRL_RW ; 
 int OTP_CTRL_CLK_EN ; 
 int /*<<< orphan*/  REG_EEPROM_CTRL ; 
 int /*<<< orphan*/  REG_EEPROM_DATA_LO ; 
 int /*<<< orphan*/  REG_OTP_CTRL ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

bool FUNC4(struct atl1c_hw *hw, u32 offset, u32 *p_value)
{
	int i;
	int ret = false;
	u32 otp_ctrl_data;
	u32 control;
	u32 data;

	if (offset & 3)
		return ret; /* address do not align */

	FUNC0(hw, REG_OTP_CTRL, &otp_ctrl_data);
	if (!(otp_ctrl_data & OTP_CTRL_CLK_EN))
		FUNC1(hw, REG_OTP_CTRL,
				(otp_ctrl_data | OTP_CTRL_CLK_EN));

	FUNC1(hw, REG_EEPROM_DATA_LO, 0);
	control = (offset & EEPROM_CTRL_ADDR_MASK) << EEPROM_CTRL_ADDR_SHIFT;
	FUNC1(hw, REG_EEPROM_CTRL, control);

	for (i = 0; i < 10; i++) {
		FUNC3(100);
		FUNC0(hw, REG_EEPROM_CTRL, &control);
		if (control & EEPROM_CTRL_RW)
			break;
	}
	if (control & EEPROM_CTRL_RW) {
		FUNC0(hw, REG_EEPROM_CTRL, &data);
		FUNC0(hw, REG_EEPROM_DATA_LO, p_value);
		data = data & 0xFFFF;
		*p_value = FUNC2((data << 16) | (*p_value >> 16));
		ret = true;
	}
	if (!(otp_ctrl_data & OTP_CTRL_CLK_EN))
		FUNC1(hw, REG_OTP_CTRL, otp_ctrl_data);

	return ret;
}