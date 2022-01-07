
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct block_device {int bd_mutex; struct block_device* bd_contains; struct gendisk* bd_disk; } ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int EBUSY ;
 int EINVAL ;
 int capable (int ) ;
 int disk_partitionable (struct gendisk*) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int rescan_partitions (struct gendisk*,struct block_device*) ;

__attribute__((used)) static int blkdev_reread_part(struct block_device *bdev)
{
 struct gendisk *disk = bdev->bd_disk;
 int res;

 if (!disk_partitionable(disk) || bdev != bdev->bd_contains)
  return -EINVAL;
 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;
 if (!mutex_trylock(&bdev->bd_mutex))
  return -EBUSY;
 res = rescan_partitions(disk, bdev);
 mutex_unlock(&bdev->bd_mutex);
 return res;
}
