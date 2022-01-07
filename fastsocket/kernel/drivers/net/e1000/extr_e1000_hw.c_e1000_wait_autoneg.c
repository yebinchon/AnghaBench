
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_SUCCESS ;
 scalar_t__ MII_SR_AUTONEG_COMPLETE ;
 scalar_t__ PHY_AUTO_NEG_TIME ;
 int PHY_STATUS ;
 scalar_t__ e1000_read_phy_reg (struct e1000_hw*,int ,scalar_t__*) ;
 int e_dbg (char*) ;
 int msleep (int) ;

__attribute__((used)) static s32 e1000_wait_autoneg(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 i;
 u16 phy_data;

 e_dbg("e1000_wait_autoneg");
 e_dbg("Waiting for Auto-Neg to complete.\n");


 for (i = PHY_AUTO_NEG_TIME; i > 0; i--) {



  ret_val = e1000_read_phy_reg(hw, PHY_STATUS, &phy_data);
  if (ret_val)
   return ret_val;
  ret_val = e1000_read_phy_reg(hw, PHY_STATUS, &phy_data);
  if (ret_val)
   return ret_val;
  if (phy_data & MII_SR_AUTONEG_COMPLETE) {
   return E1000_SUCCESS;
  }
  msleep(100);
 }
 return E1000_SUCCESS;
}
