
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * ethtool_ops; int watchdog_timeo; int * netdev_ops; } ;


 int SPIDER_NET_WATCHDOG_TIMEOUT ;
 int spider_net_ethtool_ops ;
 int spider_net_ops ;

__attribute__((used)) static void
spider_net_setup_netdev_ops(struct net_device *netdev)
{
 netdev->netdev_ops = &spider_net_ops;
 netdev->watchdog_timeo = SPIDER_NET_WATCHDOG_TIMEOUT;

 netdev->ethtool_ops = &spider_net_ethtool_ops;
}
