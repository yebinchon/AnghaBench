
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_bus {int dummy; } ;
struct pcmcia_device {struct ssb_bus* priv; } ;


 int kfree (struct ssb_bus*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int ssb_bus_unregister (struct ssb_bus*) ;

__attribute__((used)) static void b43_pcmcia_remove(struct pcmcia_device *dev)
{
 struct ssb_bus *ssb = dev->priv;

 ssb_bus_unregister(ssb);
 pcmcia_disable_device(dev);
 kfree(ssb);
 dev->priv = ((void*)0);
}
