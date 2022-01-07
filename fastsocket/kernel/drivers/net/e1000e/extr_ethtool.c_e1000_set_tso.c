
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int features; } ;
struct e1000_adapter {int flags; } ;


 int FLAG_TSO_FORCE ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e1000_set_tso(struct net_device *netdev, u32 data)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);

 if (data) {
  netdev->features |= NETIF_F_TSO;
  netdev->features |= NETIF_F_TSO6;
 } else {
  netdev->features &= ~NETIF_F_TSO;
  netdev->features &= ~NETIF_F_TSO6;
 }

 adapter->flags |= FLAG_TSO_FORCE;
 return 0;
}
