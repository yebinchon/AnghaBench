
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct mtd_part {scalar_t__ offset; TYPE_1__* master; } ;
struct mtd_info {scalar_t__ size; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int (* lock ) (TYPE_1__*,scalar_t__,scalar_t__) ;} ;


 int EINVAL ;
 struct mtd_part* PART (struct mtd_info*) ;
 int stub1 (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int part_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
{
 struct mtd_part *part = PART(mtd);
 if ((len + ofs) > mtd->size)
  return -EINVAL;
 return part->master->lock(part->master, ofs + part->offset, len);
}
