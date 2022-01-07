
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; scalar_t__ base_addr; } ;
struct ifmap {scalar_t__ base_addr; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int IFF_UP ;

__attribute__((used)) static int cpmac_config(struct net_device *dev, struct ifmap *map)
{
 if (dev->flags & IFF_UP)
  return -EBUSY;


 if (map->base_addr != dev->base_addr)
  return -EOPNOTSUPP;


 return 0;
}
