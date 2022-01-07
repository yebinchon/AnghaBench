
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {scalar_t__ priv; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct net_device* eth_dev; } ;
typedef TYPE_1__ local_info_t ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int stop_atmel_card (struct net_device*) ;

__attribute__((used)) static void atmel_release(struct pcmcia_device *link)
{
 struct net_device *dev = ((local_info_t*)link->priv)->eth_dev;

 DEBUG(0, "atmel_release(0x%p)\n", link);

 if (dev)
  stop_atmel_card(dev);
 ((local_info_t*)link->priv)->eth_dev = ((void*)0);

 pcmcia_disable_device(link);
}
