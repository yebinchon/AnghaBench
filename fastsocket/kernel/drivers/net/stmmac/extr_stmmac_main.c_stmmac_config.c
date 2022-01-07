
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; scalar_t__ base_addr; scalar_t__ irq; int name; } ;
struct ifmap {scalar_t__ base_addr; scalar_t__ irq; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int IFF_UP ;
 int pr_warning (char*,int ,...) ;

__attribute__((used)) static int stmmac_config(struct net_device *dev, struct ifmap *map)
{
 if (dev->flags & IFF_UP)
  return -EBUSY;


 if (map->base_addr != dev->base_addr) {
  pr_warning("%s: can't change I/O address\n", dev->name);
  return -EOPNOTSUPP;
 }


 if (map->irq != dev->irq) {
  pr_warning("%s: can't change IRQ number %d\n",
         dev->name, dev->irq);
  return -EOPNOTSUPP;
 }


 return 0;
}
