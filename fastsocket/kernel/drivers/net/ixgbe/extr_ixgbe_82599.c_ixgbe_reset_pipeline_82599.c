
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cached_autoc; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int IXGBE_ANLP1 ;
 int IXGBE_ANLP1_AN_STATE_MASK ;
 int IXGBE_AUTOC ;
 int IXGBE_AUTOC2 ;
 int IXGBE_AUTOC2_LINK_DISABLE_MASK ;
 int IXGBE_AUTOC_AN_RESTART ;
 int IXGBE_AUTOC_LMS_1G_AN ;
 scalar_t__ IXGBE_ERR_RESET_FAILED ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 int usleep_range (int,int) ;

s32 ixgbe_reset_pipeline_82599(struct ixgbe_hw *hw)
{
 s32 ret_val;
 u32 anlp1_reg = 0;
 u32 i, autoc_reg, autoc2_reg;


 autoc2_reg = IXGBE_READ_REG(hw, IXGBE_AUTOC2);
 if (autoc2_reg & IXGBE_AUTOC2_LINK_DISABLE_MASK) {
  autoc2_reg &= ~IXGBE_AUTOC2_LINK_DISABLE_MASK;
  IXGBE_WRITE_REG(hw, IXGBE_AUTOC2, autoc2_reg);
  IXGBE_WRITE_FLUSH(hw);
 }

 autoc_reg = hw->mac.cached_autoc;
 autoc_reg |= IXGBE_AUTOC_AN_RESTART;


 IXGBE_WRITE_REG(hw, IXGBE_AUTOC, autoc_reg ^ IXGBE_AUTOC_LMS_1G_AN);


 for (i = 0; i < 10; i++) {
  usleep_range(4000, 8000);
  anlp1_reg = IXGBE_READ_REG(hw, IXGBE_ANLP1);
  if (anlp1_reg & IXGBE_ANLP1_AN_STATE_MASK)
   break;
 }

 if (!(anlp1_reg & IXGBE_ANLP1_AN_STATE_MASK)) {
  hw_dbg(hw, "auto negotiation not completed\n");
  ret_val = IXGBE_ERR_RESET_FAILED;
  goto reset_pipeline_out;
 }

 ret_val = 0;

reset_pipeline_out:

 IXGBE_WRITE_REG(hw, IXGBE_AUTOC, autoc_reg);
 IXGBE_WRITE_FLUSH(hw);

 return ret_val;
}
