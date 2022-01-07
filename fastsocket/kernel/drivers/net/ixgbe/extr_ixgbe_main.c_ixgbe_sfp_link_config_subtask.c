
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int (* setup_link ) (struct ixgbe_hw*,int ,int) ;int (* get_link_capabilities ) (struct ixgbe_hw*,int *,int*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {int autoneg_advertised; } ;
struct ixgbe_hw {TYPE_3__ mac; TYPE_1__ phy; } ;
struct ixgbe_adapter {int flags; int state; int link_check_timeout; struct ixgbe_hw hw; } ;


 int IXGBE_FLAG_NEED_LINK_CONFIG ;
 int IXGBE_FLAG_NEED_LINK_UPDATE ;
 int __IXGBE_IN_SFP_INIT ;
 int clear_bit (int ,int *) ;
 int jiffies ;
 int stub1 (struct ixgbe_hw*,int *,int*) ;
 int stub2 (struct ixgbe_hw*,int ,int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void ixgbe_sfp_link_config_subtask(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 speed;
 bool autoneg = 0;

 if (!(adapter->flags & IXGBE_FLAG_NEED_LINK_CONFIG))
  return;


 if (test_and_set_bit(__IXGBE_IN_SFP_INIT, &adapter->state))
  return;

 adapter->flags &= ~IXGBE_FLAG_NEED_LINK_CONFIG;

 speed = hw->phy.autoneg_advertised;
 if ((!speed) && (hw->mac.ops.get_link_capabilities))
  hw->mac.ops.get_link_capabilities(hw, &speed, &autoneg);
 if (hw->mac.ops.setup_link)
  hw->mac.ops.setup_link(hw, speed, 1);

 adapter->flags |= IXGBE_FLAG_NEED_LINK_UPDATE;
 adapter->link_check_timeout = jiffies;
 clear_bit(__IXGBE_IN_SFP_INIT, &adapter->state);
}
