
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int autoneg; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct e1000_adapter {TYPE_2__ hw; } ;


 int EAGAIN ;
 int EINVAL ;
 int e1000e_reinit_locked (struct e1000_adapter*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int e1000_nway_reset(struct net_device *netdev)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);

 if (!netif_running(netdev))
  return -EAGAIN;

 if (!adapter->hw.mac.autoneg)
  return -EINVAL;

 e1000e_reinit_locked(adapter);

 return 0;
}
