
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; int flags; } ;


 int ENODEV ;
 int IFF_ECHO ;
 int chipset_init (struct net_device*) ;
 int register_candev (struct net_device*) ;
 int set_reset_mode (struct net_device*) ;
 int sja1000_netdev_ops ;
 int sja1000_probe_chip (struct net_device*) ;

int register_sja1000dev(struct net_device *dev)
{
 if (!sja1000_probe_chip(dev))
  return -ENODEV;

 dev->flags |= IFF_ECHO;
 dev->netdev_ops = &sja1000_netdev_ops;

 set_reset_mode(dev);
 chipset_init(dev);

 return register_candev(dev);
}
