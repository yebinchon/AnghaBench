
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int (* update_mc_addr_list ) (struct ixgbe_hw*,struct net_device*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbevf_adapter {int mbx_lock; struct ixgbe_hw hw; } ;


 int ixgbevf_write_uc_addr_list (struct net_device*) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ixgbe_hw*,struct net_device*) ;

__attribute__((used)) static void ixgbevf_set_rx_mode(struct net_device *netdev)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;

 spin_lock_bh(&adapter->mbx_lock);


 hw->mac.ops.update_mc_addr_list(hw, netdev);

 ixgbevf_write_uc_addr_list(netdev);

 spin_unlock_bh(&adapter->mbx_lock);
}
