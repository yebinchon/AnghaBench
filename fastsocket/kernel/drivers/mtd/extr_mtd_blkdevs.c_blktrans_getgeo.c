
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtd_blktrans_dev {TYPE_2__* tr; } ;
struct hd_geometry {int dummy; } ;
struct block_device {TYPE_1__* bd_disk; } ;
struct TYPE_4__ {int (* getgeo ) (struct mtd_blktrans_dev*,struct hd_geometry*) ;} ;
struct TYPE_3__ {struct mtd_blktrans_dev* private_data; } ;


 int ENOTTY ;
 int stub1 (struct mtd_blktrans_dev*,struct hd_geometry*) ;

__attribute__((used)) static int blktrans_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 struct mtd_blktrans_dev *dev = bdev->bd_disk->private_data;

 if (dev->tr->getgeo)
  return dev->tr->getgeo(dev, geo);
 return -ENOTTY;
}
