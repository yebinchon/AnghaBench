
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_gendev; } ;
struct scsi_cmnd {struct request* request; struct scsi_device* device; } ;
struct request_queue {int queue_lock; } ;
struct request {int dummy; } ;


 int blk_requeue_request (struct request_queue*,struct request*) ;
 int get_device (int *) ;
 int put_device (int *) ;
 int scsi_run_queue (struct request_queue*) ;
 int scsi_unprep_request (struct request*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void scsi_requeue_command(struct request_queue *q, struct scsi_cmnd *cmd)
{
 struct scsi_device *sdev = cmd->device;
 struct request *req = cmd->request;
 unsigned long flags;







 get_device(&sdev->sdev_gendev);

 spin_lock_irqsave(q->queue_lock, flags);
 scsi_unprep_request(req);
 blk_requeue_request(q, req);
 spin_unlock_irqrestore(q->queue_lock, flags);

 scsi_run_queue(q);

 put_device(&sdev->sdev_gendev);
}
