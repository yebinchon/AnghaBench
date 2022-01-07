
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {int priv; } ;
struct TYPE_3__ {int flags; int base; } ;
typedef TYPE_1__ pcnet_dev_t ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 TYPE_1__* PRIV (int ) ;
 int USE_SHMEM ;
 int iounmap (int ) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void pcnet_release(struct pcmcia_device *link)
{
 pcnet_dev_t *info = PRIV(link->priv);

 DEBUG(0, "pcnet_release(0x%p)\n", link);

 if (info->flags & USE_SHMEM)
  iounmap(info->base);

 pcmcia_disable_device(link);
}
