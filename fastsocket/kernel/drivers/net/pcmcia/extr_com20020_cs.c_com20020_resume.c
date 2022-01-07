
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {scalar_t__ open; TYPE_1__* priv; } ;
struct net_device {int base_addr; } ;
struct arcnet_local {int dummy; } ;
struct TYPE_2__ {struct net_device* dev; } ;
typedef TYPE_1__ com20020_dev_t ;


 int ARCRESET ;
 struct arcnet_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static int com20020_resume(struct pcmcia_device *link)
{
 com20020_dev_t *info = link->priv;
 struct net_device *dev = info->dev;

 if (link->open) {
  int ioaddr = dev->base_addr;
  struct arcnet_local *lp = netdev_priv(dev);
  ARCRESET;
 }

 return 0;
}
