
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {scalar_t__ ml_priv; } ;
struct ctcm_priv {struct net_device_stats stats; } ;



__attribute__((used)) static struct net_device_stats *ctcm_stats(struct net_device *dev)
{
 return &((struct ctcm_priv *)dev->ml_priv)->stats;
}
