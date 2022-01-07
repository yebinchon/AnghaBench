
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int sdev_gendev; struct request_queue* request_queue; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct request_queue {int dummy; } ;


 int get_device (int *) ;
 int put_device (int *) ;
 int scsi_put_command (struct scsi_cmnd*) ;
 int scsi_run_queue (struct request_queue*) ;

void scsi_next_command(struct scsi_cmnd *cmd)
{
 struct scsi_device *sdev = cmd->device;
 struct request_queue *q = sdev->request_queue;


 get_device(&sdev->sdev_gendev);

 scsi_put_command(cmd);
 scsi_run_queue(q);


 put_device(&sdev->sdev_gendev);
}
