
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_blktrans_ops {int (* flush ) (struct mtd_blktrans_dev*) ;} ;
struct mtd_blktrans_dev {struct mtd_blktrans_ops* tr; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct mtd_blktrans_dev* private_data; } ;



 int ENOTTY ;
 int stub1 (struct mtd_blktrans_dev*) ;

__attribute__((used)) static int blktrans_ioctl(struct block_device *bdev, fmode_t mode,
         unsigned int cmd, unsigned long arg)
{
 struct mtd_blktrans_dev *dev = bdev->bd_disk->private_data;
 struct mtd_blktrans_ops *tr = dev->tr;

 switch (cmd) {
 case 128:
  if (tr->flush)
   return tr->flush(dev);

  return 0;
 default:
  return -ENOTTY;
 }
}
