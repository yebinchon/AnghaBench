
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device_stats stats; } ;
typedef TYPE_1__ pegasus_t ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *pegasus_netdev_stats(struct net_device *dev)
{
 return &((pegasus_t *) netdev_priv(dev))->stats;
}
