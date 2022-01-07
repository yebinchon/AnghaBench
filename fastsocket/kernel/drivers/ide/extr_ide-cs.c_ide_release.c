
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__* priv; } ;
struct ide_host {int dummy; } ;
struct TYPE_2__ {scalar_t__ ndev; struct ide_host* host; } ;
typedef TYPE_1__ ide_info_t ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int ide_host_remove (struct ide_host*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;

__attribute__((used)) static void ide_release(struct pcmcia_device *link)
{
    ide_info_t *info = link->priv;
    struct ide_host *host = info->host;

    DEBUG(0, "ide_release(0x%p)\n", link);

    if (info->ndev)


 ide_host_remove(host);

    info->ndev = 0;

    pcmcia_disable_device(link);
}
