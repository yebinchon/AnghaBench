
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_local {int MacStat; } ;
struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;


 struct net_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *tms380tr_get_stats(struct net_device *dev)
{
 struct net_local *tp = netdev_priv(dev);

 return ((struct net_device_stats *)&tp->MacStat);
}
