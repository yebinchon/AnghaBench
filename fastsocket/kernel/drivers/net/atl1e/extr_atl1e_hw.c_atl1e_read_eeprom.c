
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1e_hw {int dummy; } ;


 int AT_READ_REG (struct atl1e_hw*,int ) ;
 int AT_WRITE_REG (struct atl1e_hw*,int ,int) ;
 int REG_VPD_CAP ;
 int REG_VPD_DATA ;
 int VPD_CAP_VPD_ADDR_MASK ;
 int VPD_CAP_VPD_ADDR_SHIFT ;
 int VPD_CAP_VPD_FLAG ;
 int msleep (int) ;

bool atl1e_read_eeprom(struct atl1e_hw *hw, u32 offset, u32 *p_value)
{
 int i;
 u32 control;

 if (offset & 3)
  return 0;

 AT_WRITE_REG(hw, REG_VPD_DATA, 0);
 control = (offset & VPD_CAP_VPD_ADDR_MASK) << VPD_CAP_VPD_ADDR_SHIFT;
 AT_WRITE_REG(hw, REG_VPD_CAP, control);

 for (i = 0; i < 10; i++) {
  msleep(2);
  control = AT_READ_REG(hw, REG_VPD_CAP);
  if (control & VPD_CAP_VPD_FLAG)
   break;
 }
 if (control & VPD_CAP_VPD_FLAG) {
  *p_value = AT_READ_REG(hw, REG_VPD_DATA);
  return 1;
 }
 return 0;
}
