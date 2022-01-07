
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgb_hw {int max_frame_size; } ;
struct ixgb_adapter {struct ixgb_hw hw; } ;


 int CTRL0 ;
 int DPRINTK (int ,int ,char*) ;
 int ENET_FCS_LENGTH ;
 int ERR ;
 int IXGB_CTRL0_JFE ;
 int IXGB_MAX_ENET_FRAME_SIZE_WITHOUT_FCS ;
 int IXGB_MFS_SHIFT ;
 int IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int IXGB_WRITE_REG (struct ixgb_hw*,int ,int) ;
 int MFS ;
 int PROBE ;
 int ixgb_adapter_stop (struct ixgb_hw*) ;
 int ixgb_init_hw (struct ixgb_hw*) ;

void
ixgb_reset(struct ixgb_adapter *adapter)
{
 struct ixgb_hw *hw = &adapter->hw;

 ixgb_adapter_stop(hw);
 if (!ixgb_init_hw(hw))
  DPRINTK(PROBE, ERR, "ixgb_init_hw failed.\n");


 IXGB_WRITE_REG(hw, MFS, hw->max_frame_size << IXGB_MFS_SHIFT);
 if (hw->max_frame_size >
     IXGB_MAX_ENET_FRAME_SIZE_WITHOUT_FCS + ENET_FCS_LENGTH) {
  u32 ctrl0 = IXGB_READ_REG(hw, CTRL0);
  if (!(ctrl0 & IXGB_CTRL0_JFE)) {
   ctrl0 |= IXGB_CTRL0_JFE;
   IXGB_WRITE_REG(hw, CTRL0, ctrl0);
  }
 }
}
