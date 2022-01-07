
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int revision_id; } ;
struct netxen_adapter {TYPE_1__ ahw; } ;
struct net_device {int features; } ;


 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 scalar_t__ NX_IS_REVISION_P3 (int ) ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 netxen_nic_get_tso(struct net_device *dev)
{
 struct netxen_adapter *adapter = netdev_priv(dev);

 if (NX_IS_REVISION_P3(adapter->ahw.revision_id))
  return (dev->features & (NETIF_F_TSO | NETIF_F_TSO6)) != 0;

 return (dev->features & NETIF_F_TSO) != 0;
}
