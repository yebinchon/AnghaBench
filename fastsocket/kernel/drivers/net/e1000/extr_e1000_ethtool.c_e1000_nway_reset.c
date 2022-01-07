
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct e1000_adapter {int dummy; } ;


 int e1000_reinit_locked (struct e1000_adapter*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int e1000_nway_reset(struct net_device *netdev)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 if (netif_running(netdev))
  e1000_reinit_locked(adapter);
 return 0;
}
