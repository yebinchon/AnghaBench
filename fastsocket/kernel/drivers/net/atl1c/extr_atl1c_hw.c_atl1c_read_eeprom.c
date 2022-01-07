
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1c_hw {int dummy; } ;


 int AT_READ_REG (struct atl1c_hw*,int ,int*) ;
 int AT_WRITE_REG (struct atl1c_hw*,int ,int) ;
 int EEPROM_CTRL_ADDR_MASK ;
 int EEPROM_CTRL_ADDR_SHIFT ;
 int EEPROM_CTRL_RW ;
 int OTP_CTRL_CLK_EN ;
 int REG_EEPROM_CTRL ;
 int REG_EEPROM_DATA_LO ;
 int REG_OTP_CTRL ;
 int swab32 (int) ;
 int udelay (int) ;

bool atl1c_read_eeprom(struct atl1c_hw *hw, u32 offset, u32 *p_value)
{
 int i;
 int ret = 0;
 u32 otp_ctrl_data;
 u32 control;
 u32 data;

 if (offset & 3)
  return ret;

 AT_READ_REG(hw, REG_OTP_CTRL, &otp_ctrl_data);
 if (!(otp_ctrl_data & OTP_CTRL_CLK_EN))
  AT_WRITE_REG(hw, REG_OTP_CTRL,
    (otp_ctrl_data | OTP_CTRL_CLK_EN));

 AT_WRITE_REG(hw, REG_EEPROM_DATA_LO, 0);
 control = (offset & EEPROM_CTRL_ADDR_MASK) << EEPROM_CTRL_ADDR_SHIFT;
 AT_WRITE_REG(hw, REG_EEPROM_CTRL, control);

 for (i = 0; i < 10; i++) {
  udelay(100);
  AT_READ_REG(hw, REG_EEPROM_CTRL, &control);
  if (control & EEPROM_CTRL_RW)
   break;
 }
 if (control & EEPROM_CTRL_RW) {
  AT_READ_REG(hw, REG_EEPROM_CTRL, &data);
  AT_READ_REG(hw, REG_EEPROM_DATA_LO, p_value);
  data = data & 0xFFFF;
  *p_value = swab32((data << 16) | (*p_value >> 16));
  ret = 1;
 }
 if (!(otp_ctrl_data & OTP_CTRL_CLK_EN))
  AT_WRITE_REG(hw, REG_OTP_CTRL, otp_ctrl_data);

 return ret;
}
