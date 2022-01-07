
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct request_queue {int max_hw_segments; int max_phys_segments; int max_sectors; struct i2o_block_device* queuedata; } ;
struct TYPE_2__ {int user_tid; int tid; } ;
struct i2o_device {TYPE_1__ lct_data; int device; struct i2o_controller* iop; } ;
struct i2o_controller {scalar_t__ limit_sectors; scalar_t__ adaptec; } ;
struct i2o_block_device {int power; struct gendisk* gd; struct i2o_device* i2o_dev; } ;
struct gendisk {int first_minor; int disk_name; struct request_queue* queue; int * driverfs_dev; } ;
struct device {int dummy; } ;


 int EFAULT ;
 int ENODEV ;
 unsigned short I2O_MAX_SECTORS ;
 unsigned short I2O_MAX_SECTORS_LIMITED ;
 scalar_t__ IS_ERR (struct i2o_block_device*) ;
 int KERNEL_SECTOR_SHIFT ;
 int PTR_ERR (struct i2o_block_device*) ;
 int add_disk (struct gendisk*) ;
 int blk_queue_logical_block_size (struct request_queue*,int ) ;
 int blk_queue_max_hw_sectors (struct request_queue*,unsigned short) ;
 int blk_queue_max_segments (struct request_queue*,int ) ;
 int dev_set_drvdata (struct device*,struct i2o_block_device*) ;
 struct i2o_block_device* i2o_block_device_alloc () ;
 int i2o_block_driver ;
 scalar_t__ i2o_device_claim (struct i2o_device*) ;
 int i2o_device_claim_release (struct i2o_device*) ;
 int i2o_event_register (struct i2o_device*,int *,int ,int) ;
 int i2o_parm_field_get (struct i2o_device*,int,int,int*,int) ;
 int i2o_sg_tablesize (struct i2o_controller*,int) ;
 int le32_to_cpu (int) ;
 int le64_to_cpu (int) ;
 int osm_debug (char*,int ) ;
 int osm_err (char*) ;
 int osm_info (char*,int ,int ) ;
 int osm_warn (char*,...) ;
 int set_capacity (struct gendisk*,int) ;
 int sprintf (int ,char*,char) ;
 struct i2o_device* to_i2o_device (struct device*) ;

__attribute__((used)) static int i2o_block_probe(struct device *dev)
{
 struct i2o_device *i2o_dev = to_i2o_device(dev);
 struct i2o_controller *c = i2o_dev->iop;
 struct i2o_block_device *i2o_blk_dev;
 struct gendisk *gd;
 struct request_queue *queue;
 static int unit = 0;
 int rc;
 u64 size;
 u32 blocksize;
 u16 body_size = 4;
 u16 power;
 unsigned short max_sectors;






 if (c->limit_sectors)
  max_sectors = I2O_MAX_SECTORS_LIMITED;
 else
  max_sectors = I2O_MAX_SECTORS;


 if (i2o_dev->lct_data.user_tid != 0xfff) {
  osm_debug("skipping used device %03x\n", i2o_dev->lct_data.tid);
  return -ENODEV;
 }

 if (i2o_device_claim(i2o_dev)) {
  osm_warn("Unable to claim device. Installation aborted\n");
  rc = -EFAULT;
  goto exit;
 }

 i2o_blk_dev = i2o_block_device_alloc();
 if (IS_ERR(i2o_blk_dev)) {
  osm_err("could not alloc a new I2O block device");
  rc = PTR_ERR(i2o_blk_dev);
  goto claim_release;
 }

 i2o_blk_dev->i2o_dev = i2o_dev;
 dev_set_drvdata(dev, i2o_blk_dev);


 gd = i2o_blk_dev->gd;
 gd->first_minor = unit << 4;
 sprintf(gd->disk_name, "i2o/hd%c", 'a' + unit);
 gd->driverfs_dev = &i2o_dev->device;


 queue = gd->queue;
 queue->queuedata = i2o_blk_dev;

 blk_queue_max_hw_sectors(queue, max_sectors);
 blk_queue_max_segments(queue, i2o_sg_tablesize(c, body_size));

 osm_debug("max sectors = %d\n", queue->max_sectors);
 osm_debug("phys segments = %d\n", queue->max_phys_segments);
 osm_debug("max hw segments = %d\n", queue->max_hw_segments);





 if (!i2o_parm_field_get(i2o_dev, 0x0004, 1, &blocksize, 4) ||
     !i2o_parm_field_get(i2o_dev, 0x0000, 3, &blocksize, 4)) {
  blk_queue_logical_block_size(queue, le32_to_cpu(blocksize));
 } else
  osm_warn("unable to get blocksize of %s\n", gd->disk_name);

 if (!i2o_parm_field_get(i2o_dev, 0x0004, 0, &size, 8) ||
     !i2o_parm_field_get(i2o_dev, 0x0000, 4, &size, 8)) {
  set_capacity(gd, le64_to_cpu(size) >> KERNEL_SECTOR_SHIFT);
 } else
  osm_warn("could not get size of %s\n", gd->disk_name);

 if (!i2o_parm_field_get(i2o_dev, 0x0000, 2, &power, 2))
  i2o_blk_dev->power = power;

 i2o_event_register(i2o_dev, &i2o_block_driver, 0, 0xffffffff);

 add_disk(gd);

 unit++;

 osm_info("device added (TID: %03x): %s\n", i2o_dev->lct_data.tid,
   i2o_blk_dev->gd->disk_name);

 return 0;

      claim_release:
 i2o_device_claim_release(i2o_dev);

      exit:
 return rc;
}
