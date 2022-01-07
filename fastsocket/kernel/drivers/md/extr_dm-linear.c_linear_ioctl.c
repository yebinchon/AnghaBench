
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct linear_c {scalar_t__ start; struct dm_dev* dev; } ;
struct dm_target {scalar_t__ len; scalar_t__ private; } ;
struct dm_dev {int mode; TYPE_1__* bdev; } ;
struct TYPE_2__ {int bd_inode; } ;


 int SECTOR_SHIFT ;
 int __blkdev_driver_ioctl (TYPE_1__*,int ,unsigned int,unsigned long) ;
 scalar_t__ i_size_read (int ) ;
 int scsi_verify_blk_ioctl (int *,unsigned int) ;

__attribute__((used)) static int linear_ioctl(struct dm_target *ti, unsigned int cmd,
   unsigned long arg)
{
 struct linear_c *lc = (struct linear_c *) ti->private;
 struct dm_dev *dev = lc->dev;
 int r = 0;




 if (lc->start ||
     ti->len != i_size_read(dev->bdev->bd_inode) >> SECTOR_SHIFT)
  r = scsi_verify_blk_ioctl(((void*)0), cmd);

 return r ? : __blkdev_driver_ioctl(dev->bdev, dev->mode, cmd, arg);
}
