
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtd_part {TYPE_2__* master; scalar_t__ offset; } ;
struct TYPE_3__ {int badblocks; } ;
struct mtd_info {int flags; TYPE_1__ ecc_stats; int size; } ;
typedef int loff_t ;
struct TYPE_4__ {int (* block_markbad ) (TYPE_2__*,int ) ;} ;


 int EINVAL ;
 int EROFS ;
 int MTD_WRITEABLE ;
 struct mtd_part* PART (struct mtd_info*) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static int part_block_markbad(struct mtd_info *mtd, loff_t ofs)
{
 struct mtd_part *part = PART(mtd);
 int res;

 if (!(mtd->flags & MTD_WRITEABLE))
  return -EROFS;
 if (ofs >= mtd->size)
  return -EINVAL;
 ofs += part->offset;
 res = part->master->block_markbad(part->master, ofs);
 if (!res)
  mtd->ecc_stats.badblocks++;
 return res;
}
