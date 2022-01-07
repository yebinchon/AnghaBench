
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__* priv; } ;
struct TYPE_3__ {int busy; } ;
typedef TYPE_1__ local_info_t ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int elsa_cs_release (struct pcmcia_device*) ;
 int kfree (TYPE_1__*) ;

__attribute__((used)) static void elsa_cs_detach(struct pcmcia_device *link)
{
 local_info_t *info = link->priv;

 DEBUG(0, "elsa_cs_detach(0x%p)\n", link);

 info->busy = 1;
 elsa_cs_release(link);

 kfree(info);
}
