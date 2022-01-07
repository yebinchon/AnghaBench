
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ requested_mode; scalar_t__ current_mode; int pause_time; } ;
struct TYPE_4__ {scalar_t__ (* setup_physical_interface ) (struct e1000_hw*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_3__ fc; TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 int E1000_FCAH ;
 int E1000_FCAL ;
 int E1000_FCT ;
 int E1000_FCTTV ;
 int FLOW_CONTROL_ADDRESS_HIGH ;
 int FLOW_CONTROL_ADDRESS_LOW ;
 int FLOW_CONTROL_TYPE ;
 scalar_t__ e1000_fc_default ;
 int hw_dbg (char*,...) ;
 scalar_t__ igb_check_reset_block (struct e1000_hw*) ;
 scalar_t__ igb_set_default_fc (struct e1000_hw*) ;
 scalar_t__ igb_set_fc_watermarks (struct e1000_hw*) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 int wr32 (int ,int ) ;

s32 igb_setup_link(struct e1000_hw *hw)
{
 s32 ret_val = 0;




 if (igb_check_reset_block(hw))
  goto out;




 if (hw->fc.requested_mode == e1000_fc_default) {
  ret_val = igb_set_default_fc(hw);
  if (ret_val)
   goto out;
 }





 hw->fc.current_mode = hw->fc.requested_mode;

 hw_dbg("After fix-ups FlowControl is now = %x\n", hw->fc.current_mode);


 ret_val = hw->mac.ops.setup_physical_interface(hw);
 if (ret_val)
  goto out;






 hw_dbg("Initializing the Flow Control address, type and timer regs\n");
 wr32(E1000_FCT, FLOW_CONTROL_TYPE);
 wr32(E1000_FCAH, FLOW_CONTROL_ADDRESS_HIGH);
 wr32(E1000_FCAL, FLOW_CONTROL_ADDRESS_LOW);

 wr32(E1000_FCTTV, hw->fc.pause_time);

 ret_val = igb_set_fc_watermarks(hw);

out:

 return ret_val;
}
