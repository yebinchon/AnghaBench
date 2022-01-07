
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct bigmac {struct net_device_stats enet_stats; int bregs; } ;


 int bigmac_get_counters (struct bigmac*,int ) ;
 struct bigmac* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *bigmac_get_stats(struct net_device *dev)
{
 struct bigmac *bp = netdev_priv(dev);

 bigmac_get_counters(bp, bp->bregs);
 return &bp->enet_stats;
}
