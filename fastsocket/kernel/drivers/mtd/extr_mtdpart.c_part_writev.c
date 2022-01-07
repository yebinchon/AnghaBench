
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_part {scalar_t__ offset; TYPE_1__* master; } ;
struct mtd_info {int flags; } ;
struct kvec {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int (* writev ) (TYPE_1__*,struct kvec const*,unsigned long,scalar_t__,size_t*) ;} ;


 int EROFS ;
 int MTD_WRITEABLE ;
 struct mtd_part* PART (struct mtd_info*) ;
 int stub1 (TYPE_1__*,struct kvec const*,unsigned long,scalar_t__,size_t*) ;

__attribute__((used)) static int part_writev(struct mtd_info *mtd, const struct kvec *vecs,
  unsigned long count, loff_t to, size_t *retlen)
{
 struct mtd_part *part = PART(mtd);
 if (!(mtd->flags & MTD_WRITEABLE))
  return -EROFS;
 return part->master->writev(part->master, vecs, count,
     to + part->offset, retlen);
}
