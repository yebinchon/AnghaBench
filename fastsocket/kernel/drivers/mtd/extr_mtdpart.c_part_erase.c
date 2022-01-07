
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_part {scalar_t__ offset; TYPE_1__* master; } ;
struct mtd_info {int flags; scalar_t__ size; } ;
struct erase_info {scalar_t__ addr; scalar_t__ fail_addr; } ;
struct TYPE_2__ {int (* erase ) (TYPE_1__*,struct erase_info*) ;} ;


 int EINVAL ;
 int EROFS ;
 scalar_t__ MTD_FAIL_ADDR_UNKNOWN ;
 int MTD_WRITEABLE ;
 struct mtd_part* PART (struct mtd_info*) ;
 int stub1 (TYPE_1__*,struct erase_info*) ;

__attribute__((used)) static int part_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 struct mtd_part *part = PART(mtd);
 int ret;
 if (!(mtd->flags & MTD_WRITEABLE))
  return -EROFS;
 if (instr->addr >= mtd->size)
  return -EINVAL;
 instr->addr += part->offset;
 ret = part->master->erase(part->master, instr);
 if (ret) {
  if (instr->fail_addr != MTD_FAIL_ADDR_UNKNOWN)
   instr->fail_addr -= part->offset;
  instr->addr -= part->offset;
 }
 return ret;
}
