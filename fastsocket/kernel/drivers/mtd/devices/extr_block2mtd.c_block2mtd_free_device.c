
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct block2mtd_dev* name; } ;
struct block2mtd_dev {TYPE_3__* blkdev; TYPE_1__ mtd; } ;
struct TYPE_6__ {TYPE_2__* bd_inode; } ;
struct TYPE_5__ {int i_mapping; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 int close_bdev_exclusive (TYPE_3__*,int) ;
 int invalidate_mapping_pages (int ,int ,int) ;
 int kfree (struct block2mtd_dev*) ;

__attribute__((used)) static void block2mtd_free_device(struct block2mtd_dev *dev)
{
 if (!dev)
  return;

 kfree(dev->mtd.name);

 if (dev->blkdev) {
  invalidate_mapping_pages(dev->blkdev->bd_inode->i_mapping,
     0, -1);
  close_bdev_exclusive(dev->blkdev, FMODE_READ|FMODE_WRITE);
 }

 kfree(dev);
}
