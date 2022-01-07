
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ open; scalar_t__ priv; } ;
struct net_device {int base_addr; } ;


 int HACR_DEFAULT ;
 int HACR_PWR_STAT ;
 int hacr_write (int ,int) ;
 int netif_device_detach (struct net_device*) ;
 int wv_ru_stop (struct net_device*) ;

__attribute__((used)) static int wavelan_suspend(struct pcmcia_device *link)
{
 struct net_device * dev = (struct net_device *) link->priv;
 wv_ru_stop(dev);

 if (link->open)
  netif_device_detach(dev);


 hacr_write(dev->base_addr, HACR_DEFAULT & (~HACR_PWR_STAT));

 return 0;
}
