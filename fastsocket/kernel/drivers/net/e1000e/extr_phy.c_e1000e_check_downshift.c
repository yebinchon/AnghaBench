
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_phy_info {int type; int speed_downgraded; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef int s32 ;


 int IGP01E1000_PHY_LINK_HEALTH ;
 int IGP01E1000_PLHR_SS_DOWNGRADE ;
 int M88E1000_PHY_SPEC_STATUS ;
 int M88E1000_PSSR_DOWNSHIFT ;






 int e1e_rphy (struct e1000_hw*,int,int*) ;

s32 e1000e_check_downshift(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 phy_data, offset, mask;

 switch (phy->type) {
 case 128:
 case 131:
 case 132:
 case 133:
  offset = M88E1000_PHY_SPEC_STATUS;
  mask = M88E1000_PSSR_DOWNSHIFT;
  break;
 case 130:
 case 129:
  offset = IGP01E1000_PHY_LINK_HEALTH;
  mask = IGP01E1000_PLHR_SS_DOWNGRADE;
  break;
 default:

  phy->speed_downgraded = 0;
  return 0;
 }

 ret_val = e1e_rphy(hw, offset, &phy_data);

 if (!ret_val)
  phy->speed_downgraded = !!(phy_data & mask);

 return ret_val;
}
