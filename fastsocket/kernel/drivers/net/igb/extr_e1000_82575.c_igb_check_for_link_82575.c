
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int get_link_status; int serdes_has_link; } ;
struct TYPE_3__ {scalar_t__ media_type; } ;
struct e1000_hw {TYPE_2__ mac; TYPE_1__ phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ e1000_media_type_copper ;
 int hw_dbg (char*) ;
 scalar_t__ igb_check_for_copper_link (struct e1000_hw*) ;
 scalar_t__ igb_config_fc_after_link_up (struct e1000_hw*) ;
 scalar_t__ igb_get_pcs_speed_and_duplex_82575 (struct e1000_hw*,int *,int *) ;

__attribute__((used)) static s32 igb_check_for_link_82575(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 speed, duplex;

 if (hw->phy.media_type != e1000_media_type_copper) {
  ret_val = igb_get_pcs_speed_and_duplex_82575(hw, &speed,
                                               &duplex);




  hw->mac.get_link_status = !hw->mac.serdes_has_link;






  ret_val = igb_config_fc_after_link_up(hw);
  if (ret_val)
   hw_dbg("Error configuring flow control\n");
 } else {
  ret_val = igb_check_for_copper_link(hw);
 }

 return ret_val;
}
