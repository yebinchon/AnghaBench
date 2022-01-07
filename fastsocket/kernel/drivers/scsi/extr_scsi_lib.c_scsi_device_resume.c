
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ sdev_state; int request_queue; } ;


 scalar_t__ SDEV_QUIESCE ;
 int SDEV_RUNNING ;
 scalar_t__ scsi_device_set_state (struct scsi_device*,int ) ;
 int scsi_run_queue (int ) ;

void scsi_device_resume(struct scsi_device *sdev)
{




 if (sdev->sdev_state != SDEV_QUIESCE ||
     scsi_device_set_state(sdev, SDEV_RUNNING))
  return;
 scsi_run_queue(sdev->request_queue);
}
