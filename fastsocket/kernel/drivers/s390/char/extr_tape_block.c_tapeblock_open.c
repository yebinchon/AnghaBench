
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tape_device {TYPE_1__* cdev; scalar_t__ required_tapemarks; } ;
struct gendisk {int private_data; } ;
struct block_device {struct gendisk* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {int dev; } ;


 int DBF_EVENT (int,char*) ;
 int EPERM ;
 int TS_BLKUSE ;
 int dev_name (int *) ;
 int pr_warning (char*,int ) ;
 struct tape_device* tape_get_device_reference (int ) ;
 int tape_open (struct tape_device*) ;
 int tape_put_device (struct tape_device*) ;
 int tape_release (struct tape_device*) ;
 int tape_state_set (struct tape_device*,int ) ;
 int tapeblock_revalidate_disk (struct gendisk*) ;

__attribute__((used)) static int
tapeblock_open(struct block_device *bdev, fmode_t mode)
{
 struct gendisk * disk = bdev->bd_disk;
 struct tape_device * device;
 int rc;

 device = tape_get_device_reference(disk->private_data);

 if (device->required_tapemarks) {
  DBF_EVENT(2, "TBLOCK: missing tapemarks\n");
  pr_warning("%s: Opening the tape failed because of missing "
      "end-of-file marks\n", dev_name(&device->cdev->dev));
  rc = -EPERM;
  goto put_device;
 }

 rc = tape_open(device);
 if (rc)
  goto put_device;

 rc = tapeblock_revalidate_disk(disk);
 if (rc)
  goto release;





 tape_state_set(device, TS_BLKUSE);
 return 0;

release:
 tape_release(device);
 put_device:
 tape_put_device(device);
 return rc;
}
