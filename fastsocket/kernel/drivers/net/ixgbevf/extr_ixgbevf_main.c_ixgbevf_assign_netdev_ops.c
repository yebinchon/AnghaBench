
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int watchdog_timeo; int * netdev_ops; } ;


 int HZ ;
 int ixgbevf_netdev_ops ;
 int ixgbevf_set_ethtool_ops (struct net_device*) ;

__attribute__((used)) static void ixgbevf_assign_netdev_ops(struct net_device *dev)
{
 dev->netdev_ops = &ixgbevf_netdev_ops;
 ixgbevf_set_ethtool_ops(dev);
 dev->watchdog_timeo = 5 * HZ;
}
