
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int if_port; int flags; } ;
struct ifmap {int port; } ;


 int EINVAL ;
 int IFF_AUTOMEDIA ;


 int etherh_setif (struct net_device*) ;

__attribute__((used)) static int etherh_set_config(struct net_device *dev, struct ifmap *map)
{
 switch (map->port) {
 case 129:
 case 128:




  dev->flags &= ~IFF_AUTOMEDIA;
  dev->if_port = map->port;
  break;

 default:
  return -EINVAL;
 }

 etherh_setif(dev);

 return 0;
}
