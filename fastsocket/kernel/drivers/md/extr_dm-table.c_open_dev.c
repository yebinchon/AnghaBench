
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mapped_device {int dummy; } ;
struct TYPE_2__ {struct block_device* bdev; int mode; } ;
struct dm_dev_internal {TYPE_1__ dm_dev; } ;
struct block_device {int dummy; } ;
typedef int dev_t ;


 int BUG_ON (struct block_device*) ;
 scalar_t__ IS_ERR (struct block_device*) ;
 int PTR_ERR (struct block_device*) ;
 int bd_claim_by_disk (struct block_device*,char*,int ) ;
 int blkdev_put (struct block_device*,int ) ;
 int dm_disk (struct mapped_device*) ;
 struct block_device* open_by_devnum (int ,int ) ;

__attribute__((used)) static int open_dev(struct dm_dev_internal *d, dev_t dev,
      struct mapped_device *md)
{
 static char *_claim_ptr = "I belong to device-mapper";
 struct block_device *bdev;

 int r;

 BUG_ON(d->dm_dev.bdev);

 bdev = open_by_devnum(dev, d->dm_dev.mode);
 if (IS_ERR(bdev))
  return PTR_ERR(bdev);
 r = bd_claim_by_disk(bdev, _claim_ptr, dm_disk(md));
 if (r)
  blkdev_put(bdev, d->dm_dev.mode);
 else
  d->dm_dev.bdev = bdev;
 return r;
}
