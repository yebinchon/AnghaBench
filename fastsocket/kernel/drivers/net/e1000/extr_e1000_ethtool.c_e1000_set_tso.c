
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int features; } ;
struct e1000_hw {scalar_t__ mac_type; } ;
struct e1000_adapter {int tso_force; struct e1000_hw hw; } ;


 int EINVAL ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 scalar_t__ e1000_82544 ;
 scalar_t__ e1000_82547 ;
 int e_info (int ,char*,char*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int probe ;

__attribute__((used)) static int e1000_set_tso(struct net_device *netdev, u32 data)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;

 if ((hw->mac_type < e1000_82544) ||
     (hw->mac_type == e1000_82547))
  return data ? -EINVAL : 0;

 if (data)
  netdev->features |= NETIF_F_TSO;
 else
  netdev->features &= ~NETIF_F_TSO;

 netdev->features &= ~NETIF_F_TSO6;

 e_info(probe, "TSO is %s\n", data ? "Enabled" : "Disabled");
 adapter->tso_force = 1;
 return 0;
}
