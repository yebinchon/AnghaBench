
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ autoneg_advertised; } ;
struct e1000_hw {TYPE_1__ phy; } ;
typedef int s32 ;


 scalar_t__ E1000_ALL_10_SPEED ;
 scalar_t__ E1000_ALL_NOT_GIG ;
 scalar_t__ E1000_ALL_SPEED_DUPLEX ;
 int E1000_PHY_CTRL_NOND0A_LPLU ;
 int POEMB ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;

__attribute__((used)) static s32 e1000_set_d3_lplu_state_82574(struct e1000_hw *hw, bool active)
{
 u32 data = er32(POEMB);

 if (!active) {
  data &= ~E1000_PHY_CTRL_NOND0A_LPLU;
 } else if ((hw->phy.autoneg_advertised == E1000_ALL_SPEED_DUPLEX) ||
     (hw->phy.autoneg_advertised == E1000_ALL_NOT_GIG) ||
     (hw->phy.autoneg_advertised == E1000_ALL_10_SPEED)) {
  data |= E1000_PHY_CTRL_NOND0A_LPLU;
 }

 ew32(POEMB, data);
 return 0;
}
