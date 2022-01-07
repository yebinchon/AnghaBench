
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_part {TYPE_1__* master; scalar_t__ offset; } ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {unsigned long (* get_unmapped_area ) (TYPE_1__*,unsigned long,unsigned long,unsigned long) ;} ;


 struct mtd_part* PART (struct mtd_info*) ;
 unsigned long stub1 (TYPE_1__*,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long part_get_unmapped_area(struct mtd_info *mtd,
         unsigned long len,
         unsigned long offset,
         unsigned long flags)
{
 struct mtd_part *part = PART(mtd);

 offset += part->offset;
 return part->master->get_unmapped_area(part->master, len, offset,
            flags);
}
