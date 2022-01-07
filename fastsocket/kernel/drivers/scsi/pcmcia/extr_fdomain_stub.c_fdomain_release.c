
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__* priv; } ;
struct TYPE_2__ {int host; } ;
typedef TYPE_1__ scsi_info_t ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int scsi_remove_host (int ) ;
 int scsi_unregister (int ) ;

__attribute__((used)) static void fdomain_release(struct pcmcia_device *link)
{
 scsi_info_t *info = link->priv;

 DEBUG(0, "fdomain_release(0x%p)\n", link);

 scsi_remove_host(info->host);
 pcmcia_disable_device(link);
 scsi_unregister(info->host);
}
