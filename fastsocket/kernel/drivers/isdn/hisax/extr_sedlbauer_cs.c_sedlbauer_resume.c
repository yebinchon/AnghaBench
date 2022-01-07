
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__* priv; } ;
struct TYPE_2__ {scalar_t__ stop; } ;
typedef TYPE_1__ local_info_t ;



__attribute__((used)) static int sedlbauer_resume(struct pcmcia_device *link)
{
 local_info_t *dev = link->priv;

 dev->stop = 0;

 return 0;
}
