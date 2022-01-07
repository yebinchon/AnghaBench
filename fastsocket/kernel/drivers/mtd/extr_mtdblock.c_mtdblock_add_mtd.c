
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int size; int flags; int index; } ;
struct mtd_blktrans_ops {int dummy; } ;
struct mtd_blktrans_dev {int size; int readonly; struct mtd_blktrans_ops* tr; int devnum; struct mtd_info* mtd; } ;


 int GFP_KERNEL ;
 int MTD_WRITEABLE ;
 int add_mtd_blktrans_dev (struct mtd_blktrans_dev*) ;
 struct mtd_blktrans_dev* kzalloc (int,int ) ;

__attribute__((used)) static void mtdblock_add_mtd(struct mtd_blktrans_ops *tr, struct mtd_info *mtd)
{
 struct mtd_blktrans_dev *dev = kzalloc(sizeof(*dev), GFP_KERNEL);

 if (!dev)
  return;

 dev->mtd = mtd;
 dev->devnum = mtd->index;

 dev->size = mtd->size >> 9;
 dev->tr = tr;

 if (!(mtd->flags & MTD_WRITEABLE))
  dev->readonly = 1;

 add_mtd_blktrans_dev(dev);
}
