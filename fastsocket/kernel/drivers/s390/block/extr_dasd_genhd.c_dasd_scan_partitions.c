
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_block {struct block_device* bdev; int gdp; } ;
struct block_device {int dummy; } ;


 int BLKRRPART ;
 int ENODEV ;
 int FMODE_READ ;
 struct block_device* bdget_disk (int ,int ) ;
 scalar_t__ blkdev_get (struct block_device*,int ) ;
 int ioctl_by_bdev (struct block_device*,int ,int ) ;

int dasd_scan_partitions(struct dasd_block *block)
{
 struct block_device *bdev;

 bdev = bdget_disk(block->gdp, 0);
 if (!bdev || blkdev_get(bdev, FMODE_READ) < 0)
  return -ENODEV;




 ioctl_by_bdev(bdev, BLKRRPART, 0);
 block->bdev = bdev;
 return 0;
}
