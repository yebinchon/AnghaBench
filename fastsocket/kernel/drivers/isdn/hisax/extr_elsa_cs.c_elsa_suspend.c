
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__* priv; } ;
struct TYPE_2__ {int busy; } ;
typedef TYPE_1__ local_info_t ;



__attribute__((used)) static int elsa_suspend(struct pcmcia_device *link)
{
 local_info_t *dev = link->priv;

        dev->busy = 1;

 return 0;
}
