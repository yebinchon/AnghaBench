
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int features; } ;
struct e1000_hw {scalar_t__ mac_type; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int EINVAL ;
 int NETIF_F_HW_CSUM ;
 scalar_t__ e1000_82543 ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e1000_set_tx_csum(struct net_device *netdev, u32 data)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;

 if (hw->mac_type < e1000_82543) {
  if (!data)
   return -EINVAL;
  return 0;
 }

 if (data)
  netdev->features |= NETIF_F_HW_CSUM;
 else
  netdev->features &= ~NETIF_F_HW_CSUM;

 return 0;
}
