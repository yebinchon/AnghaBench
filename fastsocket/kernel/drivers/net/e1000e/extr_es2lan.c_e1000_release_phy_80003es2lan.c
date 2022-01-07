
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ func; } ;
struct e1000_hw {TYPE_1__ bus; } ;


 int E1000_SWFW_PHY0_SM ;
 int E1000_SWFW_PHY1_SM ;
 int e1000_release_swfw_sync_80003es2lan (struct e1000_hw*,int ) ;

__attribute__((used)) static void e1000_release_phy_80003es2lan(struct e1000_hw *hw)
{
 u16 mask;

 mask = hw->bus.func ? E1000_SWFW_PHY1_SM : E1000_SWFW_PHY0_SM;
 e1000_release_swfw_sync_80003es2lan(hw, mask);
}
