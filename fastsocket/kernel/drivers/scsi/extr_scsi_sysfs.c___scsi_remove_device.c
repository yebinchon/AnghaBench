
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct scsi_device {TYPE_2__* host; int requeue_work; int request_queue; struct device sdev_dev; scalar_t__ is_visible; struct device sdev_gendev; } ;
struct TYPE_4__ {TYPE_1__* hostt; } ;
struct TYPE_3__ {int (* slave_destroy ) (struct scsi_device*) ;} ;


 int SDEV_CANCEL ;
 int SDEV_DEL ;
 int blk_cleanup_queue (int ) ;
 int bsg_unregister_queue (int ) ;
 int cancel_work_sync (int *) ;
 int device_del (struct device*) ;
 int device_unregister (struct device*) ;
 int put_device (struct device*) ;
 scalar_t__ scsi_device_set_state (struct scsi_device*,int ) ;
 int stub1 (struct scsi_device*) ;
 int transport_destroy_device (struct device*) ;
 int transport_remove_device (struct device*) ;

void __scsi_remove_device(struct scsi_device *sdev)
{
 struct device *dev = &sdev->sdev_gendev;

 if (sdev->is_visible) {
  if (scsi_device_set_state(sdev, SDEV_CANCEL) != 0)
   return;

  bsg_unregister_queue(sdev->request_queue);
  device_unregister(&sdev->sdev_dev);
  transport_remove_device(dev);
  device_del(dev);
 } else
  put_device(&sdev->sdev_dev);






 scsi_device_set_state(sdev, SDEV_DEL);
 blk_cleanup_queue(sdev->request_queue);
 cancel_work_sync(&sdev->requeue_work);

 if (sdev->host->hostt->slave_destroy)
  sdev->host->hostt->slave_destroy(sdev);
 transport_destroy_device(dev);

 put_device(dev);
}
