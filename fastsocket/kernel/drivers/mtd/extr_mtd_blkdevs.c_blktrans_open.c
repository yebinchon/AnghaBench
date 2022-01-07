
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtd_blktrans_ops {int (* open ) (struct mtd_blktrans_dev*) ;int owner; } ;
struct mtd_blktrans_dev {TYPE_2__* mtd; struct mtd_blktrans_ops* tr; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_4__ {int usecount; int index; } ;
struct TYPE_3__ {struct mtd_blktrans_dev* private_data; } ;


 int ENODEV ;
 int get_mtd_device (int *,int ) ;
 int module_put (int ) ;
 int put_mtd_device (TYPE_2__*) ;
 int stub1 (struct mtd_blktrans_dev*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int blktrans_open(struct block_device *bdev, fmode_t mode)
{
 struct mtd_blktrans_dev *dev = bdev->bd_disk->private_data;
 struct mtd_blktrans_ops *tr = dev->tr;
 int ret = -ENODEV;

 if (!get_mtd_device(((void*)0), dev->mtd->index))
  goto out;

 if (!try_module_get(tr->owner))
  goto out_tr;




 dev->mtd->usecount++;

 ret = 0;
 if (tr->open && (ret = tr->open(dev))) {
  dev->mtd->usecount--;
  put_mtd_device(dev->mtd);
 out_tr:
  module_put(tr->owner);
 }
 out:
 return ret;
}
