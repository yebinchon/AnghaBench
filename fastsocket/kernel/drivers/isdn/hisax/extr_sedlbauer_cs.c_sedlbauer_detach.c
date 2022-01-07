
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {scalar_t__ priv; } ;
struct TYPE_2__ {int stop; } ;
typedef TYPE_1__ local_info_t ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int kfree (scalar_t__) ;
 int sedlbauer_release (struct pcmcia_device*) ;

__attribute__((used)) static void sedlbauer_detach(struct pcmcia_device *link)
{
 DEBUG(0, "sedlbauer_detach(0x%p)\n", link);

 ((local_info_t *)link->priv)->stop = 1;
 sedlbauer_release(link);


 kfree(link->priv);
}
