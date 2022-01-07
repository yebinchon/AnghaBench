
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int max_target_blocked; int target_blocked; } ;
struct scsi_device {int requeue_work; int max_device_blocked; int device_blocked; struct request_queue* request_queue; struct Scsi_Host* host; } ;
struct scsi_cmnd {int request; struct scsi_device* device; } ;
struct request_queue {int queue_lock; } ;
struct Scsi_Host {int max_host_blocked; int host_blocked; } ;


 int SCSI_LOG_MLQUEUE (int,int ) ;




 int blk_requeue_request (struct request_queue*,int ) ;
 int kblockd_schedule_work (struct request_queue*,int *) ;
 int printk (char*,struct scsi_cmnd*) ;
 int scsi_device_unbusy (struct scsi_device*) ;
 struct scsi_target* scsi_target (struct scsi_device*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void __scsi_queue_insert(struct scsi_cmnd *cmd, int reason, int unbusy)
{
 struct Scsi_Host *host = cmd->device->host;
 struct scsi_device *device = cmd->device;
 struct scsi_target *starget = scsi_target(device);
 struct request_queue *q = device->request_queue;
 unsigned long flags;

 SCSI_LOG_MLQUEUE(1,
   printk("Inserting command %p into mlqueue\n", cmd));
 switch (reason) {
 case 129:
  host->host_blocked = host->max_host_blocked;
  break;
 case 131:
 case 130:
  device->device_blocked = device->max_device_blocked;
  break;
 case 128:
  starget->target_blocked = starget->max_target_blocked;
  break;
 }





 if (unbusy)
  scsi_device_unbusy(device);







 spin_lock_irqsave(q->queue_lock, flags);
 blk_requeue_request(q, cmd->request);
 kblockd_schedule_work(q, &device->requeue_work);
 spin_unlock_irqrestore(q->queue_lock, flags);
}
