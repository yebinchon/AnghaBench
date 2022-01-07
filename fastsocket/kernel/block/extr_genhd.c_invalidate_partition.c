
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct block_device {int dummy; } ;


 int __invalidate_device (struct block_device*,int) ;
 struct block_device* bdget_disk (struct gendisk*,int) ;
 int bdput (struct block_device*) ;
 int fsync_bdev (struct block_device*) ;

int invalidate_partition(struct gendisk *disk, int partno)
{
 int res = 0;
 struct block_device *bdev = bdget_disk(disk, partno);
 if (bdev) {
  fsync_bdev(bdev);
  res = __invalidate_device(bdev, 1);
  bdput(bdev);
 }
 return res;
}
