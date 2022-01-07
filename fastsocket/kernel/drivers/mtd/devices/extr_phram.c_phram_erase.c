
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {scalar_t__ size; int * priv; } ;
struct erase_info {scalar_t__ addr; scalar_t__ len; int state; } ;


 int EINVAL ;
 int MTD_ERASE_DONE ;
 int memset (int *,int,scalar_t__) ;
 int mtd_erase_callback (struct erase_info*) ;

__attribute__((used)) static int phram_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 u_char *start = mtd->priv;

 if (instr->addr + instr->len > mtd->size)
  return -EINVAL;

 memset(start + instr->addr, 0xff, instr->len);






 instr->state = MTD_ERASE_DONE;

 mtd_erase_callback(instr);

 return 0;
}
