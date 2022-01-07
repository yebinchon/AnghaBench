
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct erase_info {int state; } ;


 int MTD_ERASE_DONE ;
 int MTD_ERASE_FAILED ;
 int __alauda_erase (struct mtd_info*,struct erase_info*) ;
 int mtd_erase_callback (struct erase_info*) ;

__attribute__((used)) static int alauda_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 int err;

 err = __alauda_erase(mtd, instr);
 instr->state = err ? MTD_ERASE_FAILED : MTD_ERASE_DONE;
 mtd_erase_callback(instr);
 return err;
}
