
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scsi_disk {int index; int media_present; int first_scan; int dev; scalar_t__ capacity; scalar_t__ ATO; scalar_t__ RCD; scalar_t__ WCE; scalar_t__ cache_override; scalar_t__ write_prot; struct scsi_device* device; int driver; struct gendisk* disk; } ;
struct device {int dummy; } ;
struct scsi_device {int sector_size; scalar_t__ removable; struct device sdev_gendev; int request_queue; } ;
struct gendisk {int first_minor; int flags; struct device* driverfs_dev; int queue; int * private_data; int * fops; int minors; int major; } ;
typedef int async_cookie_t ;


 int GENHD_FL_DRIVERFS ;
 int GENHD_FL_EXT_DEVT ;
 int GENHD_FL_REMOVABLE ;
 int KERN_NOTICE ;
 int SD_MAX_DISKS ;
 int SD_MINORS ;
 int add_disk (struct gendisk*) ;
 int blk_queue_prep_rq (int ,int ) ;
 int blk_queue_unprep_rq (int ,int ) ;
 int dev_set_drvdata (struct device*,struct scsi_disk*) ;
 int put_device (int *) ;
 int sd_dif_config_host (struct scsi_disk*) ;
 int sd_fops ;
 int sd_major (int) ;
 int sd_prep_fn ;
 int sd_printk (int ,struct scsi_disk*,char*,char*) ;
 int sd_revalidate_disk (struct gendisk*) ;
 int sd_unprep_fn ;

__attribute__((used)) static void sd_probe_async(void *data, async_cookie_t cookie)
{
 struct scsi_disk *sdkp = data;
 struct scsi_device *sdp;
 struct gendisk *gd;
 u32 index;
 struct device *dev;

 sdp = sdkp->device;
 gd = sdkp->disk;
 index = sdkp->index;
 dev = &sdp->sdev_gendev;

 if (index < SD_MAX_DISKS) {
  gd->major = sd_major((index & 0xf0) >> 4);
  gd->first_minor = ((index & 0xf) << 4) | (index & 0xfff00);
  gd->minors = SD_MINORS;
 }
 gd->fops = &sd_fops;
 gd->private_data = &sdkp->driver;
 gd->queue = sdkp->device->request_queue;


 sdp->sector_size = 512;
 sdkp->capacity = 0;
 sdkp->media_present = 1;
 sdkp->write_prot = 0;
 sdkp->cache_override = 0;
 sdkp->WCE = 0;
 sdkp->RCD = 0;
 sdkp->ATO = 0;
 sdkp->first_scan = 1;

 sd_revalidate_disk(gd);

 blk_queue_prep_rq(sdp->request_queue, sd_prep_fn);
 blk_queue_unprep_rq(sdp->request_queue, sd_unprep_fn);

 gd->driverfs_dev = &sdp->sdev_gendev;
 gd->flags = GENHD_FL_EXT_DEVT | GENHD_FL_DRIVERFS;
 if (sdp->removable)
  gd->flags |= GENHD_FL_REMOVABLE;

 dev_set_drvdata(dev, sdkp);
 add_disk(gd);
 if (sdkp->capacity)
  sd_dif_config_host(sdkp);

 sd_revalidate_disk(gd);

 sd_printk(KERN_NOTICE, sdkp, "Attached SCSI %sdisk\n",
    sdp->removable ? "removable " : "");
 put_device(&sdkp->dev);
}
