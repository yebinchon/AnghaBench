
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_part {TYPE_1__* master; scalar_t__ offset; } ;
struct mtd_info {int size; } ;
typedef int loff_t ;
struct TYPE_2__ {int (* block_isbad ) (TYPE_1__*,int ) ;} ;


 int EINVAL ;
 struct mtd_part* PART (struct mtd_info*) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static int part_block_isbad(struct mtd_info *mtd, loff_t ofs)
{
 struct mtd_part *part = PART(mtd);
 if (ofs >= mtd->size)
  return -EINVAL;
 ofs += part->offset;
 return part->master->block_isbad(part->master, ofs);
}
