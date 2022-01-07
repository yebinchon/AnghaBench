
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int CTRL ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_SLU ;
 scalar_t__ e1000_copper_link_setup_82577 (struct e1000_hw*) ;
 scalar_t__ e1000e_setup_copper_link (struct e1000_hw*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static s32 e1000_setup_copper_link_pch_lpt(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val;

 ctrl = er32(CTRL);
 ctrl |= E1000_CTRL_SLU;
 ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
 ew32(CTRL, ctrl);

 ret_val = e1000_copper_link_setup_82577(hw);
 if (ret_val)
  return ret_val;

 return e1000e_setup_copper_link(hw);
}
