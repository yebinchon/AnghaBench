
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int (* block_bad ) (struct mtd_info*,int ,int) ;int bbt; } ;
struct mtd_info {struct nand_chip* priv; } ;
typedef int loff_t ;


 int nand_isbad_bbt (struct mtd_info*,int ,int) ;
 int stub1 (struct mtd_info*,int ,int) ;

__attribute__((used)) static int nand_block_checkbad(struct mtd_info *mtd, loff_t ofs, int getchip,
          int allowbbt)
{
 struct nand_chip *chip = mtd->priv;

 if (!chip->bbt)
  return chip->block_bad(mtd, ofs, getchip);


 return nand_isbad_bbt(mtd, ofs, allowbbt);
}
