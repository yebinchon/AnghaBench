
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ (* get_cfg_done ) (struct e1000_hw*) ;int (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;scalar_t__ (* check_reset_block ) (struct e1000_hw*) ;} ;
struct e1000_phy_info {TYPE_1__ ops; int reset_delay_us; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int CTRL ;
 int E1000_CTRL_PHY_RST ;
 int e1e_flush () ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 scalar_t__ stub2 (struct e1000_hw*) ;
 int stub3 (struct e1000_hw*) ;
 scalar_t__ stub4 (struct e1000_hw*) ;
 int udelay (int ) ;
 int usleep_range (int,int) ;

s32 e1000e_phy_hw_reset_generic(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u32 ctrl;

 if (phy->ops.check_reset_block) {
  ret_val = phy->ops.check_reset_block(hw);
  if (ret_val)
   return 0;
 }

 ret_val = phy->ops.acquire(hw);
 if (ret_val)
  return ret_val;

 ctrl = er32(CTRL);
 ew32(CTRL, ctrl | E1000_CTRL_PHY_RST);
 e1e_flush();

 udelay(phy->reset_delay_us);

 ew32(CTRL, ctrl);
 e1e_flush();

 usleep_range(150, 300);

 phy->ops.release(hw);

 return phy->ops.get_cfg_done(hw);
}
