
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_target {int target_busy; } ;
struct scsi_device {TYPE_1__* request_queue; int device_busy; struct Scsi_Host* host; } ;
struct Scsi_Host {int host_lock; scalar_t__ host_eh_scheduled; scalar_t__ host_failed; int host_busy; } ;
struct TYPE_2__ {int queue_lock; } ;


 int scsi_eh_wakeup (struct Scsi_Host*) ;
 scalar_t__ scsi_host_in_recovery (struct Scsi_Host*) ;
 struct scsi_target* scsi_target (struct scsi_device*) ;
 int spin_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock (int ) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ unlikely (int) ;

void scsi_device_unbusy(struct scsi_device *sdev)
{
 struct Scsi_Host *shost = sdev->host;
 struct scsi_target *starget = scsi_target(sdev);
 unsigned long flags;

 spin_lock_irqsave(shost->host_lock, flags);
 shost->host_busy--;
 starget->target_busy--;
 if (unlikely(scsi_host_in_recovery(shost) &&
       (shost->host_failed || shost->host_eh_scheduled)))
  scsi_eh_wakeup(shost);
 spin_unlock(shost->host_lock);
 spin_lock(sdev->request_queue->queue_lock);
 sdev->device_busy--;
 spin_unlock_irqrestore(sdev->request_queue->queue_lock, flags);
}
