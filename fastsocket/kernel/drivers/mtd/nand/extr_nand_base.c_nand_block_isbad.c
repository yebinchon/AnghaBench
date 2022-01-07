
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {scalar_t__ size; } ;
typedef scalar_t__ loff_t ;


 int EINVAL ;
 int nand_block_checkbad (struct mtd_info*,scalar_t__,int,int ) ;

__attribute__((used)) static int nand_block_isbad(struct mtd_info *mtd, loff_t offs)
{

 if (offs > mtd->size)
  return -EINVAL;

 return nand_block_checkbad(mtd, offs, 1, 0);
}
