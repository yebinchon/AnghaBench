
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_phy_info {int cable_length; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int E1000_CABLE_LENGTH_UNDEFINED ;
 scalar_t__ E1000_ERR_PHY ;
 int I82577_DSTATUS_CABLE_LENGTH ;
 int I82577_DSTATUS_CABLE_LENGTH_SHIFT ;
 int I82577_PHY_DIAG_STATUS ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int*) ;

s32 e1000_get_cable_length_82577(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 phy_data, length;

 ret_val = e1e_rphy(hw, I82577_PHY_DIAG_STATUS, &phy_data);
 if (ret_val)
  return ret_val;

 length = ((phy_data & I82577_DSTATUS_CABLE_LENGTH) >>
    I82577_DSTATUS_CABLE_LENGTH_SHIFT);

 if (length == E1000_CABLE_LENGTH_UNDEFINED)
  return -E1000_ERR_PHY;

 phy->cable_length = length;

 return 0;
}
