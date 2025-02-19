
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {scalar_t__ type; int changed; int sector_size; int request_queue; int sdev_gendev; } ;
struct TYPE_2__ {int capacity; int name; struct gendisk* disk; scalar_t__ mask; struct scsi_cd* handle; int * ops; } ;
struct scsi_cd {int capacity; int previous_state; int use; TYPE_1__ cdi; int * driver; scalar_t__ readcd_cdda; scalar_t__ readcd_known; struct scsi_device* device; struct gendisk* disk; int kref; } ;
struct gendisk {int first_minor; int flags; int queue; int ** private_data; int * driverfs_dev; int * fops; int disk_name; int major; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GENHD_FL_CD ;
 int GENHD_FL_REMOVABLE ;
 int GFP_KERNEL ;
 int KERN_DEBUG ;
 int SCSI_CDROM_MAJOR ;
 int SR_DISKS ;
 int SR_TIMEOUT ;
 scalar_t__ TYPE_ROM ;
 scalar_t__ TYPE_WORM ;
 int __set_bit (int,int ) ;
 int add_disk (struct gendisk*) ;
 struct gendisk* alloc_disk (int) ;
 int blk_queue_prep_rq (int ,int ) ;
 int blk_queue_rq_timeout (int ,int ) ;
 int dev_set_drvdata (struct device*,struct scsi_cd*) ;
 int find_first_zero_bit (int ,int) ;
 int get_capabilities (struct scsi_cd*) ;
 int kfree (struct scsi_cd*) ;
 int kref_init (int *) ;
 struct scsi_cd* kzalloc (int,int ) ;
 int put_disk (struct gendisk*) ;
 scalar_t__ register_cdrom (TYPE_1__*) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ) ;
 int set_capacity (struct gendisk*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int sprintf (int ,char*,int) ;
 int sr_bdops ;
 int sr_dops ;
 int sr_index_bits ;
 int sr_index_lock ;
 int sr_prep_fn ;
 int sr_template ;
 int sr_vendor_init (struct scsi_cd*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static int sr_probe(struct device *dev)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct gendisk *disk;
 struct scsi_cd *cd;
 int minor, error;

 error = -ENODEV;
 if (sdev->type != TYPE_ROM && sdev->type != TYPE_WORM)
  goto fail;

 error = -ENOMEM;
 cd = kzalloc(sizeof(*cd), GFP_KERNEL);
 if (!cd)
  goto fail;

 kref_init(&cd->kref);

 disk = alloc_disk(1);
 if (!disk)
  goto fail_free;

 spin_lock(&sr_index_lock);
 minor = find_first_zero_bit(sr_index_bits, SR_DISKS);
 if (minor == SR_DISKS) {
  spin_unlock(&sr_index_lock);
  error = -EBUSY;
  goto fail_put;
 }
 __set_bit(minor, sr_index_bits);
 spin_unlock(&sr_index_lock);

 disk->major = SCSI_CDROM_MAJOR;
 disk->first_minor = minor;
 sprintf(disk->disk_name, "sr%d", minor);
 disk->fops = &sr_bdops;
 disk->flags = GENHD_FL_CD;

 blk_queue_rq_timeout(sdev->request_queue, SR_TIMEOUT);

 cd->device = sdev;
 cd->disk = disk;
 cd->driver = &sr_template;
 cd->disk = disk;
 cd->capacity = 0x1fffff;
 cd->device->changed = 1;
 cd->previous_state = 1;
 cd->use = 1;
 cd->readcd_known = 0;
 cd->readcd_cdda = 0;

 cd->cdi.ops = &sr_dops;
 cd->cdi.handle = cd;
 cd->cdi.mask = 0;
 cd->cdi.capacity = 1;
 sprintf(cd->cdi.name, "sr%d", minor);

 sdev->sector_size = 2048;


 get_capabilities(cd);
 blk_queue_prep_rq(sdev->request_queue, sr_prep_fn);
 sr_vendor_init(cd);

 disk->driverfs_dev = &sdev->sdev_gendev;
 set_capacity(disk, cd->capacity);
 disk->private_data = &cd->driver;
 disk->queue = sdev->request_queue;
 cd->cdi.disk = disk;

 if (register_cdrom(&cd->cdi))
  goto fail_put;

 dev_set_drvdata(dev, cd);
 disk->flags |= GENHD_FL_REMOVABLE;
 add_disk(disk);

 sdev_printk(KERN_DEBUG, sdev,
      "Attached scsi CD-ROM %s\n", cd->cdi.name);
 return 0;

fail_put:
 put_disk(disk);
fail_free:
 kfree(cd);
fail:
 return error;
}
