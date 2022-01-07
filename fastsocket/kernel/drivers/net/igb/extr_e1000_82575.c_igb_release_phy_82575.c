
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int (* release_swfw_sync ) (struct e1000_hw*,int ) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ func; } ;
struct e1000_hw {TYPE_3__ mac; TYPE_1__ bus; } ;


 scalar_t__ E1000_FUNC_1 ;
 scalar_t__ E1000_FUNC_2 ;
 scalar_t__ E1000_FUNC_3 ;
 int E1000_SWFW_PHY0_SM ;
 int E1000_SWFW_PHY1_SM ;
 int E1000_SWFW_PHY2_SM ;
 int E1000_SWFW_PHY3_SM ;
 int stub1 (struct e1000_hw*,int ) ;

__attribute__((used)) static void igb_release_phy_82575(struct e1000_hw *hw)
{
 u16 mask = E1000_SWFW_PHY0_SM;

 if (hw->bus.func == E1000_FUNC_1)
  mask = E1000_SWFW_PHY1_SM;
 else if (hw->bus.func == E1000_FUNC_2)
  mask = E1000_SWFW_PHY2_SM;
 else if (hw->bus.func == E1000_FUNC_3)
  mask = E1000_SWFW_PHY3_SM;

 hw->mac.ops.release_swfw_sync(hw, mask);
}
