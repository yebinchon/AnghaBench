
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int (* block_markbad ) (struct mtd_info*,int ) ;} ;
struct mtd_info {struct nand_chip* priv; } ;
typedef int loff_t ;


 int nand_block_isbad (struct mtd_info*,int ) ;
 int stub1 (struct mtd_info*,int ) ;

__attribute__((used)) static int nand_block_markbad(struct mtd_info *mtd, loff_t ofs)
{
 struct nand_chip *chip = mtd->priv;
 int ret;

 if ((ret = nand_block_isbad(mtd, ofs))) {

  if (ret > 0)
   return 0;
  return ret;
 }

 return chip->block_markbad(mtd, ofs);
}
