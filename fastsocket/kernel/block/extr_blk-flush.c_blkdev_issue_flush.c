
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int sector_t ;


 int GFP_KERNEL ;
 int __blkdev_issue_flush (struct block_device*,int ,int *) ;

int blkdev_issue_flush(struct block_device *bdev, sector_t *error_sector)
{
 return __blkdev_issue_flush(bdev, GFP_KERNEL, error_sector);
}
