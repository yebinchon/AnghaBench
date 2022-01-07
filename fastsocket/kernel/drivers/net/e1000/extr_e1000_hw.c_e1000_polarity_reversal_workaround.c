
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_SUCCESS ;
 int M88E1000_PHY_GEN_CONTROL ;
 int M88E1000_PHY_PAGE_SELECT ;
 scalar_t__ MII_SR_LINK_STATUS ;
 scalar_t__ PHY_FORCE_TIME ;
 int PHY_STATUS ;
 scalar_t__ e1000_read_phy_reg (struct e1000_hw*,int ,scalar_t__*) ;
 scalar_t__ e1000_write_phy_reg (struct e1000_hw*,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static s32 e1000_polarity_reversal_workaround(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 mii_status_reg;
 u16 i;





 ret_val = e1000_write_phy_reg(hw, M88E1000_PHY_PAGE_SELECT, 0x0019);
 if (ret_val)
  return ret_val;
 ret_val = e1000_write_phy_reg(hw, M88E1000_PHY_GEN_CONTROL, 0xFFFF);
 if (ret_val)
  return ret_val;

 ret_val = e1000_write_phy_reg(hw, M88E1000_PHY_PAGE_SELECT, 0x0000);
 if (ret_val)
  return ret_val;


 for (i = PHY_FORCE_TIME; i > 0; i--) {




  ret_val = e1000_read_phy_reg(hw, PHY_STATUS, &mii_status_reg);
  if (ret_val)
   return ret_val;

  ret_val = e1000_read_phy_reg(hw, PHY_STATUS, &mii_status_reg);
  if (ret_val)
   return ret_val;

  if ((mii_status_reg & ~MII_SR_LINK_STATUS) == 0)
   break;
  msleep(100);
 }


 msleep(1000);



 ret_val = e1000_write_phy_reg(hw, M88E1000_PHY_PAGE_SELECT, 0x0019);
 if (ret_val)
  return ret_val;
 msleep(50);
 ret_val = e1000_write_phy_reg(hw, M88E1000_PHY_GEN_CONTROL, 0xFFF0);
 if (ret_val)
  return ret_val;
 msleep(50);
 ret_val = e1000_write_phy_reg(hw, M88E1000_PHY_GEN_CONTROL, 0xFF00);
 if (ret_val)
  return ret_val;
 msleep(50);
 ret_val = e1000_write_phy_reg(hw, M88E1000_PHY_GEN_CONTROL, 0x0000);
 if (ret_val)
  return ret_val;

 ret_val = e1000_write_phy_reg(hw, M88E1000_PHY_PAGE_SELECT, 0x0000);
 if (ret_val)
  return ret_val;


 for (i = PHY_FORCE_TIME; i > 0; i--) {




  ret_val = e1000_read_phy_reg(hw, PHY_STATUS, &mii_status_reg);
  if (ret_val)
   return ret_val;

  ret_val = e1000_read_phy_reg(hw, PHY_STATUS, &mii_status_reg);
  if (ret_val)
   return ret_val;

  if (mii_status_reg & MII_SR_LINK_STATUS)
   break;
  msleep(100);
 }
 return E1000_SUCCESS;
}
