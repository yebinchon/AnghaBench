
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mapped_device {int dummy; } ;
struct TYPE_2__ {int * bdev; int mode; } ;
struct dm_dev_internal {TYPE_1__ dm_dev; } ;


 int bd_release_from_disk (int *,int ) ;
 int blkdev_put (int *,int ) ;
 int dm_disk (struct mapped_device*) ;

__attribute__((used)) static void close_dev(struct dm_dev_internal *d, struct mapped_device *md)
{
 if (!d->dm_dev.bdev)
  return;

 bd_release_from_disk(d->dm_dev.bdev, dm_disk(md));
 blkdev_put(d->dm_dev.bdev, d->dm_dev.mode);
 d->dm_dev.bdev = ((void*)0);
}
