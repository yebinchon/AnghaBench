
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {TYPE_2__* priv; } ;
struct TYPE_3__ {int minor; } ;
struct TYPE_4__ {TYPE_1__ node; } ;
typedef TYPE_2__ local_info_t ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int HiSax_closecard (int ) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void avma1cs_release(struct pcmcia_device *link)
{
 local_info_t *local = link->priv;

 DEBUG(0, "avma1cs_release(0x%p)\n", link);


 HiSax_closecard(local->node.minor);

 pcmcia_disable_device(link);
}
