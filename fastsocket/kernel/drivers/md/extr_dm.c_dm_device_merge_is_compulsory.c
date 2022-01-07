
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct dm_target {int dummy; } ;
struct dm_dev {struct block_device* bdev; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 struct request_queue* bdev_get_queue (struct block_device*) ;
 int dm_queue_merge_is_compulsory (struct request_queue*) ;

__attribute__((used)) static int dm_device_merge_is_compulsory(struct dm_target *ti,
      struct dm_dev *dev, sector_t start,
      sector_t len, void *data)
{
 struct block_device *bdev = dev->bdev;
 struct request_queue *q = bdev_get_queue(bdev);

 return dm_queue_merge_is_compulsory(q);
}
