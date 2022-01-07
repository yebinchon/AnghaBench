
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__* priv; } ;
struct TYPE_2__ {int eth_dev; } ;
typedef TYPE_1__ local_info_t ;


 int atmel_open (int ) ;
 int netif_device_attach (int ) ;

__attribute__((used)) static int atmel_resume(struct pcmcia_device *link)
{
 local_info_t *local = link->priv;

 atmel_open(local->eth_dev);
 netif_device_attach(local->eth_dev);

 return 0;
}
