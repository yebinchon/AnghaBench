
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int revision_id; } ;
struct netxen_adapter {TYPE_1__ ahw; } ;
struct net_device {int features; } ;


 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 scalar_t__ NX_IS_REVISION_P3 (int ) ;
 struct netxen_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int netxen_nic_set_tso(struct net_device *dev, u32 data)
{
 if (data) {
  struct netxen_adapter *adapter = netdev_priv(dev);

  dev->features |= NETIF_F_TSO;
  if (NX_IS_REVISION_P3(adapter->ahw.revision_id))
   dev->features |= NETIF_F_TSO6;
 } else
  dev->features &= ~(NETIF_F_TSO | NETIF_F_TSO6);

 return 0;
}
