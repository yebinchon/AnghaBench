
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef int s32 ;


 int E1000_PHY_CTRL_D0A_LPLU ;
 int POEMB ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;

__attribute__((used)) static s32 e1000_set_d0_lplu_state_82574(struct e1000_hw *hw, bool active)
{
 u32 data = er32(POEMB);

 if (active)
  data |= E1000_PHY_CTRL_D0A_LPLU;
 else
  data &= ~E1000_PHY_CTRL_D0A_LPLU;

 ew32(POEMB, data);
 return 0;
}
