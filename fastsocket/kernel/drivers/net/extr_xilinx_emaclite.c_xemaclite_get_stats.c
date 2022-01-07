
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {struct net_device_stats stats; } ;



__attribute__((used)) static struct net_device_stats *xemaclite_get_stats(struct net_device *dev)
{
 return &dev->stats;
}
