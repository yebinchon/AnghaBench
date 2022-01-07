
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {int dev; int disk; TYPE_1__* device; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int request_queue; } ;


 int async_synchronize_full_domain (int *) ;
 int blk_queue_prep_rq (int ,int ) ;
 int blk_queue_unprep_rq (int ,int *) ;
 int del_gendisk (int ) ;
 struct scsi_disk* dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int device_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int scsi_prep_fn ;
 int scsi_sd_probe_domain ;
 int sd_ref_mutex ;
 int sd_shutdown (struct device*) ;

__attribute__((used)) static int sd_remove(struct device *dev)
{
 struct scsi_disk *sdkp;

 async_synchronize_full_domain(&scsi_sd_probe_domain);
 sdkp = dev_get_drvdata(dev);
 blk_queue_prep_rq(sdkp->device->request_queue, scsi_prep_fn);
 blk_queue_unprep_rq(sdkp->device->request_queue, ((void*)0));
 device_del(&sdkp->dev);
 del_gendisk(sdkp->disk);
 sd_shutdown(dev);

 mutex_lock(&sd_ref_mutex);
 dev_set_drvdata(dev, ((void*)0));
 put_device(&sdkp->dev);
 mutex_unlock(&sd_ref_mutex);

 return 0;
}
