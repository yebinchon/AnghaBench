
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {scalar_t__ open; TYPE_1__* priv; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* dev; } ;
typedef TYPE_1__ com20020_dev_t ;


 int netif_device_detach (struct net_device*) ;

__attribute__((used)) static int com20020_suspend(struct pcmcia_device *link)
{
 com20020_dev_t *info = link->priv;
 struct net_device *dev = info->dev;

 if (link->open)
  netif_device_detach(dev);

 return 0;
}
