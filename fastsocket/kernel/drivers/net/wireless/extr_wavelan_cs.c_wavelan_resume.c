
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ open; scalar_t__ priv; } ;
struct net_device {int dummy; } ;


 int netif_device_attach (struct net_device*) ;
 int wv_hw_reset (struct net_device*) ;

__attribute__((used)) static int wavelan_resume(struct pcmcia_device *link)
{
 struct net_device * dev = (struct net_device *) link->priv;

 if (link->open) {
  wv_hw_reset(dev);
  netif_device_attach(dev);
 }

 return 0;
}
