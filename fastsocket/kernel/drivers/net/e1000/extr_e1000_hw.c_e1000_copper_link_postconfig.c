
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {scalar_t__ mac_type; scalar_t__ phy_type; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_SUCCESS ;
 scalar_t__ e1000_82544 ;
 scalar_t__ e1000_ce4100 ;
 int e1000_config_collision_dist (struct e1000_hw*) ;
 scalar_t__ e1000_config_dsp_after_link_change (struct e1000_hw*,int) ;
 scalar_t__ e1000_config_fc_after_link_up (struct e1000_hw*) ;
 scalar_t__ e1000_config_mac_to_phy (struct e1000_hw*) ;
 scalar_t__ e1000_phy_igp ;
 int e_dbg (char*) ;

__attribute__((used)) static s32 e1000_copper_link_postconfig(struct e1000_hw *hw)
{
 s32 ret_val;
 e_dbg("e1000_copper_link_postconfig");

 if ((hw->mac_type >= e1000_82544) && (hw->mac_type != e1000_ce4100)) {
  e1000_config_collision_dist(hw);
 } else {
  ret_val = e1000_config_mac_to_phy(hw);
  if (ret_val) {
   e_dbg("Error configuring MAC to PHY settings\n");
   return ret_val;
  }
 }
 ret_val = e1000_config_fc_after_link_up(hw);
 if (ret_val) {
  e_dbg("Error Configuring Flow Control\n");
  return ret_val;
 }


 if (hw->phy_type == e1000_phy_igp) {
  ret_val = e1000_config_dsp_after_link_change(hw, 1);
  if (ret_val) {
   e_dbg("Error Configuring DSP after link up\n");
   return ret_val;
  }
 }

 return E1000_SUCCESS;
}
