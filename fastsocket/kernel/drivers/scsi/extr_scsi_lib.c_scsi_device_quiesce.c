
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int request_queue; scalar_t__ device_busy; } ;


 int SDEV_QUIESCE ;
 int msleep_interruptible (int) ;
 int scsi_device_set_state (struct scsi_device*,int ) ;
 int scsi_run_queue (int ) ;

int
scsi_device_quiesce(struct scsi_device *sdev)
{
 int err = scsi_device_set_state(sdev, SDEV_QUIESCE);
 if (err)
  return err;

 scsi_run_queue(sdev->request_queue);
 while (sdev->device_busy) {
  msleep_interruptible(200);
  scsi_run_queue(sdev->request_queue);
 }
 return 0;
}
