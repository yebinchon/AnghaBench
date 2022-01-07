
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ atl1_write_phy_reg (struct atl1_hw*,int,int) ;

__attribute__((used)) static s32 atl1_phy_leave_power_saving(struct atl1_hw *hw)
{
 s32 ret;
 ret = atl1_write_phy_reg(hw, 29, 0x0029);
 if (ret)
  return ret;
 return atl1_write_phy_reg(hw, 30, 0);
}
