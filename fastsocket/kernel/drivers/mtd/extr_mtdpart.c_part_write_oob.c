
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_part {scalar_t__ offset; TYPE_1__* master; } ;
struct mtd_oob_ops {scalar_t__ len; scalar_t__ datbuf; } ;
struct mtd_info {int flags; scalar_t__ size; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int (* write_oob ) (TYPE_1__*,scalar_t__,struct mtd_oob_ops*) ;} ;


 int EINVAL ;
 int EROFS ;
 int MTD_WRITEABLE ;
 struct mtd_part* PART (struct mtd_info*) ;
 int stub1 (TYPE_1__*,scalar_t__,struct mtd_oob_ops*) ;

__attribute__((used)) static int part_write_oob(struct mtd_info *mtd, loff_t to,
  struct mtd_oob_ops *ops)
{
 struct mtd_part *part = PART(mtd);

 if (!(mtd->flags & MTD_WRITEABLE))
  return -EROFS;

 if (to >= mtd->size)
  return -EINVAL;
 if (ops->datbuf && to + ops->len > mtd->size)
  return -EINVAL;
 return part->master->write_oob(part->master, to + part->offset, ops);
}
