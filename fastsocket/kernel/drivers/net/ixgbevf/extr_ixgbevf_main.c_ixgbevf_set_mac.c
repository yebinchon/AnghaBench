
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct TYPE_3__ {int (* set_rar ) (struct ixgbe_hw*,int ,int ,int ) ;} ;
struct TYPE_4__ {int addr; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbevf_adapter {int mbx_lock; struct ixgbe_hw hw; } ;


 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ixgbe_hw*,int ,int ,int ) ;

__attribute__((used)) static int ixgbevf_set_mac(struct net_device *netdev, void *p)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 struct sockaddr *addr = p;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
 memcpy(hw->mac.addr, addr->sa_data, netdev->addr_len);

 spin_lock_bh(&adapter->mbx_lock);

 hw->mac.ops.set_rar(hw, 0, hw->mac.addr, 0);

 spin_unlock_bh(&adapter->mbx_lock);

 return 0;
}
