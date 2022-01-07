
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int pflags; int scsi_host; int lock; int eh_wait_q; } ;


 int ATA_PFLAG_EH_IN_PROGRESS ;
 int ATA_PFLAG_EH_PENDING ;
 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int ata_msleep (struct ata_port*,int) ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 scalar_t__ scsi_host_in_recovery (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wait ;

void ata_port_wait_eh(struct ata_port *ap)
{
 unsigned long flags;
 DEFINE_WAIT(wait);

 retry:
 spin_lock_irqsave(ap->lock, flags);

 while (ap->pflags & (ATA_PFLAG_EH_PENDING | ATA_PFLAG_EH_IN_PROGRESS)) {
  prepare_to_wait(&ap->eh_wait_q, &wait, TASK_UNINTERRUPTIBLE);
  spin_unlock_irqrestore(ap->lock, flags);
  schedule();
  spin_lock_irqsave(ap->lock, flags);
 }
 finish_wait(&ap->eh_wait_q, &wait);

 spin_unlock_irqrestore(ap->lock, flags);


 if (scsi_host_in_recovery(ap->scsi_host)) {
  ata_msleep(ap, 10);
  goto retry;
 }
}
