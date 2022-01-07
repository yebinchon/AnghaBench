
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* config_collision_dist ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {int get_link_status; TYPE_1__ ops; int autoneg; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_CONFIG ;
 int e1000e_check_downshift (struct e1000_hw*) ;
 scalar_t__ e1000e_config_fc_after_link_up (struct e1000_hw*) ;
 scalar_t__ e1000e_phy_has_link_generic (struct e1000_hw*,int,int ,int*) ;
 int e_dbg (char*) ;
 int stub1 (struct e1000_hw*) ;

s32 e1000e_check_for_copper_link(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 s32 ret_val;
 bool link;






 if (!mac->get_link_status)
  return 0;





 ret_val = e1000e_phy_has_link_generic(hw, 1, 0, &link);
 if (ret_val)
  return ret_val;

 if (!link)
  return 0;

 mac->get_link_status = 0;




 e1000e_check_downshift(hw);




 if (!mac->autoneg)
  return -E1000_ERR_CONFIG;





 mac->ops.config_collision_dist(hw);






 ret_val = e1000e_config_fc_after_link_up(hw);
 if (ret_val)
  e_dbg("Error configuring flow control\n");

 return ret_val;
}
