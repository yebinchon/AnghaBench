
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {scalar_t__ size; scalar_t__ priv; } ;
struct erase_info {scalar_t__ addr; scalar_t__ len; int state; } ;


 int EINVAL ;
 int MTD_ERASE_DONE ;
 int memset (char*,int,scalar_t__) ;
 int mtd_erase_callback (struct erase_info*) ;

__attribute__((used)) static int ram_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 if (instr->addr + instr->len > mtd->size)
  return -EINVAL;

 memset((char *)mtd->priv + instr->addr, 0xff, instr->len);

 instr->state = MTD_ERASE_DONE;
 mtd_erase_callback(instr);

 return 0;
}
