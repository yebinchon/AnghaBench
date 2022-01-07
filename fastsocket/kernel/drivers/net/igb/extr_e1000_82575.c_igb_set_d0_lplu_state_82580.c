
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_phy_info {scalar_t__ smart_speed; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef int s32 ;


 int E1000_82580_PHY_POWER_MGMT ;
 int E1000_82580_PM_D0_LPLU ;
 int E1000_82580_PM_SPD ;
 scalar_t__ e1000_smart_speed_off ;
 scalar_t__ e1000_smart_speed_on ;
 int rd32 (int ) ;
 int wr32 (int ,int ) ;

__attribute__((used)) static s32 igb_set_d0_lplu_state_82580(struct e1000_hw *hw, bool active)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val = 0;
 u16 data;

 data = rd32(E1000_82580_PHY_POWER_MGMT);

 if (active) {
  data |= E1000_82580_PM_D0_LPLU;


  data &= ~E1000_82580_PM_SPD;
 } else {
  data &= ~E1000_82580_PM_D0_LPLU;






  if (phy->smart_speed == e1000_smart_speed_on)
   data |= E1000_82580_PM_SPD;
  else if (phy->smart_speed == e1000_smart_speed_off)
   data &= ~E1000_82580_PM_SPD; }

 wr32(E1000_82580_PHY_POWER_MGMT, data);
 return ret_val;
}
