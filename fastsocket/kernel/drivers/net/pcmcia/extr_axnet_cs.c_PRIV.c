
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ei_device {int dummy; } ;
typedef void axnet_dev_t ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static inline axnet_dev_t *PRIV(struct net_device *dev)
{
 void *p = (char *)netdev_priv(dev) + sizeof(struct ei_device);
 return p;
}
