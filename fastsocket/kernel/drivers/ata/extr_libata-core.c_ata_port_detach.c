
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {int pflags; int scsi_host; int hotplug_task; int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int error_handler; } ;


 int ATA_PFLAG_UNLOADED ;
 int ATA_PFLAG_UNLOADING ;
 int WARN_ON (int) ;
 int ata_port_schedule_eh (struct ata_port*) ;
 int ata_port_wait_eh (struct ata_port*) ;
 int cancel_rearming_delayed_work (int *) ;
 int scsi_remove_host (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void ata_port_detach(struct ata_port *ap)
{
 unsigned long flags;

 if (!ap->ops->error_handler)
  goto skip_eh;


 spin_lock_irqsave(ap->lock, flags);
 ap->pflags |= ATA_PFLAG_UNLOADING;
 ata_port_schedule_eh(ap);
 spin_unlock_irqrestore(ap->lock, flags);


 ata_port_wait_eh(ap);


 WARN_ON(!(ap->pflags & ATA_PFLAG_UNLOADED));

 cancel_rearming_delayed_work(&ap->hotplug_task);

 skip_eh:

 scsi_remove_host(ap->scsi_host);
}
