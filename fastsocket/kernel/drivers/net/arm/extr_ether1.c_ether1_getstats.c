
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device_stats stats; } ;


 TYPE_1__* priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *
ether1_getstats (struct net_device *dev)
{
 return &priv(dev)->stats;
}
