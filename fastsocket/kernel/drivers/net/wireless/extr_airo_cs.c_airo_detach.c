
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {scalar_t__ priv; } ;
struct TYPE_2__ {int * eth_dev; } ;
typedef TYPE_1__ local_info_t ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int airo_release (struct pcmcia_device*) ;
 int kfree (scalar_t__) ;
 int stop_airo_card (int *,int ) ;

__attribute__((used)) static void airo_detach(struct pcmcia_device *link)
{
 DEBUG(0, "airo_detach(0x%p)\n", link);

 airo_release(link);

 if (((local_info_t *)link->priv)->eth_dev) {
  stop_airo_card(((local_info_t *)link->priv)->eth_dev, 0);
 }
 ((local_info_t *)link->priv)->eth_dev = ((void*)0);

 kfree(link->priv);
}
