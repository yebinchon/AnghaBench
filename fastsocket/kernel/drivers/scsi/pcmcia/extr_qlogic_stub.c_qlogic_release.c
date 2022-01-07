
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int AssignedIRQ; } ;
struct pcmcia_device {TYPE_1__ irq; TYPE_2__* priv; } ;
struct TYPE_4__ {int host; } ;
typedef TYPE_2__ scsi_info_t ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int free_irq (int ,int ) ;
 int pcmcia_disable_device (struct pcmcia_device*) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;

__attribute__((used)) static void qlogic_release(struct pcmcia_device *link)
{
 scsi_info_t *info = link->priv;

 DEBUG(0, "qlogic_release(0x%p)\n", link);

 scsi_remove_host(info->host);

 free_irq(link->irq.AssignedIRQ, info->host);
 pcmcia_disable_device(link);

 scsi_host_put(info->host);
}
