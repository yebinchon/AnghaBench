
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_phy_info {scalar_t__ smart_speed; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int IGP01E1000_PHY_PORT_CONFIG ;
 int IGP01E1000_PSCFR_SMART_SPEED ;
 int IGP02E1000_PHY_POWER_MGMT ;
 int IGP02E1000_PM_D0_LPLU ;
 scalar_t__ e1000_smart_speed_off ;
 scalar_t__ e1000_smart_speed_on ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int *) ;
 scalar_t__ e1e_wphy (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 e1000_set_d0_lplu_state_82571(struct e1000_hw *hw, bool active)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 data;

 ret_val = e1e_rphy(hw, IGP02E1000_PHY_POWER_MGMT, &data);
 if (ret_val)
  return ret_val;

 if (active) {
  data |= IGP02E1000_PM_D0_LPLU;
  ret_val = e1e_wphy(hw, IGP02E1000_PHY_POWER_MGMT, data);
  if (ret_val)
   return ret_val;


  ret_val = e1e_rphy(hw, IGP01E1000_PHY_PORT_CONFIG, &data);
  if (ret_val)
   return ret_val;
  data &= ~IGP01E1000_PSCFR_SMART_SPEED;
  ret_val = e1e_wphy(hw, IGP01E1000_PHY_PORT_CONFIG, data);
  if (ret_val)
   return ret_val;
 } else {
  data &= ~IGP02E1000_PM_D0_LPLU;
  ret_val = e1e_wphy(hw, IGP02E1000_PHY_POWER_MGMT, data);





  if (phy->smart_speed == e1000_smart_speed_on) {
   ret_val = e1e_rphy(hw, IGP01E1000_PHY_PORT_CONFIG,
        &data);
   if (ret_val)
    return ret_val;

   data |= IGP01E1000_PSCFR_SMART_SPEED;
   ret_val = e1e_wphy(hw, IGP01E1000_PHY_PORT_CONFIG,
        data);
   if (ret_val)
    return ret_val;
  } else if (phy->smart_speed == e1000_smart_speed_off) {
   ret_val = e1e_rphy(hw, IGP01E1000_PHY_PORT_CONFIG,
        &data);
   if (ret_val)
    return ret_val;

   data &= ~IGP01E1000_PSCFR_SMART_SPEED;
   ret_val = e1e_wphy(hw, IGP01E1000_PHY_PORT_CONFIG,
        data);
   if (ret_val)
    return ret_val;
  }
 }

 return 0;
}
