
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ open; struct net_device* priv; } ;
struct net_device {int dummy; } ;


 int netif_device_attach (struct net_device*) ;
 int tc589_reset (struct net_device*) ;

__attribute__((used)) static int tc589_resume(struct pcmcia_device *link)
{
 struct net_device *dev = link->priv;

  if (link->open) {
  tc589_reset(dev);
  netif_device_attach(dev);
 }

 return 0;
}
