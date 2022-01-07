
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {unsigned long features; } ;
struct myri10ge_priv {unsigned long features; } ;


 unsigned long NETIF_F_TSO ;
 unsigned long NETIF_F_TSO6 ;
 struct myri10ge_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int myri10ge_set_tso(struct net_device *netdev, u32 tso_enabled)
{
 struct myri10ge_priv *mgp = netdev_priv(netdev);
 unsigned long flags = mgp->features & (NETIF_F_TSO6 | NETIF_F_TSO);

 if (tso_enabled)
  netdev->features |= flags;
 else
  netdev->features &= ~flags;
 return 0;
}
