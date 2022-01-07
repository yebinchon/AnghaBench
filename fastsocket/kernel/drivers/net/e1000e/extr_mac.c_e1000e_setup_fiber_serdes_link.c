
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ media_type; } ;
struct TYPE_4__ {int (* config_collision_dist ) (struct e1000_hw*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 int CTRL ;
 int E1000_CTRL_LRST ;
 int E1000_CTRL_SWDPIN1 ;
 scalar_t__ e1000_commit_fc_settings_generic (struct e1000_hw*) ;
 scalar_t__ e1000_media_type_internal_serdes ;
 scalar_t__ e1000_poll_fiber_serdes_link_generic (struct e1000_hw*) ;
 int e1e_flush () ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int stub1 (struct e1000_hw*) ;
 int usleep_range (int,int) ;

s32 e1000e_setup_fiber_serdes_link(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val;

 ctrl = er32(CTRL);


 ctrl &= ~E1000_CTRL_LRST;

 hw->mac.ops.config_collision_dist(hw);

 ret_val = e1000_commit_fc_settings_generic(hw);
 if (ret_val)
  return ret_val;







 e_dbg("Auto-negotiation enabled\n");

 ew32(CTRL, ctrl);
 e1e_flush();
 usleep_range(1000, 2000);





 if (hw->phy.media_type == e1000_media_type_internal_serdes ||
     (er32(CTRL) & E1000_CTRL_SWDPIN1)) {
  ret_val = e1000_poll_fiber_serdes_link_generic(hw);
 } else {
  e_dbg("No signal detected\n");
 }

 return ret_val;
}
