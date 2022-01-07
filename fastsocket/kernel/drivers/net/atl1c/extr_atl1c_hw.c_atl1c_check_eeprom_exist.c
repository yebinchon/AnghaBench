
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1c_hw {int dummy; } ;


 int AT_READ_REG (struct atl1c_hw*,int ,int*) ;
 int MASTER_CTRL_OTP_SEL ;
 int REG_MASTER_CTRL ;
 int REG_TWSI_DEBUG ;
 int TWSI_DEBUG_DEV_EXIST ;

int atl1c_check_eeprom_exist(struct atl1c_hw *hw)
{
 u32 data;

 AT_READ_REG(hw, REG_TWSI_DEBUG, &data);
 if (data & TWSI_DEBUG_DEV_EXIST)
  return 1;

 AT_READ_REG(hw, REG_MASTER_CTRL, &data);
 if (data & MASTER_CTRL_OTP_SEL)
  return 1;
 return 0;
}
