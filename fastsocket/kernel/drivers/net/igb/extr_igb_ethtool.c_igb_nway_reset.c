
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igb_adapter {int dummy; } ;


 int igb_reinit_locked (struct igb_adapter*) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int igb_nway_reset(struct net_device *netdev)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 if (netif_running(netdev))
  igb_reinit_locked(adapter);
 return 0;
}
