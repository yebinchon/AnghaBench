
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {int dummy; } ;


 struct net_device_stats* __ei_get_stats (struct net_device*) ;

struct net_device_stats *ei_get_stats(struct net_device *dev)
{
 return __ei_get_stats(dev);
}
