
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtd_part {scalar_t__ offset; } ;
struct erase_info {scalar_t__ fail_addr; int (* callback ) (struct erase_info*) ;int addr; TYPE_1__* mtd; } ;
struct TYPE_2__ {scalar_t__ erase; } ;


 scalar_t__ MTD_FAIL_ADDR_UNKNOWN ;
 struct mtd_part* PART (TYPE_1__*) ;
 scalar_t__ part_erase ;
 int stub1 (struct erase_info*) ;

void mtd_erase_callback(struct erase_info *instr)
{
 if (instr->mtd->erase == part_erase) {
  struct mtd_part *part = PART(instr->mtd);

  if (instr->fail_addr != MTD_FAIL_ADDR_UNKNOWN)
   instr->fail_addr -= part->offset;
  instr->addr -= part->offset;
 }
 if (instr->callback)
  instr->callback(instr);
}
