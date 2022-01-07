
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ei_device {int dummy; } ;
typedef int pcnet_dev_t ;


 char* netdev_priv (struct net_device*) ;

__attribute__((used)) static inline pcnet_dev_t *PRIV(struct net_device *dev)
{
 char *p = netdev_priv(dev);
 return (pcnet_dev_t *)(p + sizeof(struct ei_device));
}
