
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {scalar_t__ open; TYPE_1__* priv; } ;
struct TYPE_2__ {int eth_dev; } ;
typedef TYPE_1__ local_info_t ;


 int netif_device_attach (int ) ;
 int reset_airo_card (int ) ;

__attribute__((used)) static int airo_resume(struct pcmcia_device *link)
{
 local_info_t *local = link->priv;

 if (link->open) {
  reset_airo_card(local->eth_dev);
  netif_device_attach(local->eth_dev);
 }

 return 0;
}
