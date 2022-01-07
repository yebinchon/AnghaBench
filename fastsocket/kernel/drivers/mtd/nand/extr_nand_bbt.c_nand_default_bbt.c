
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int options; int * badblock_pattern; int * bbt_md; int * bbt_td; } ;
struct mtd_info {int writesize; struct nand_chip* priv; } ;


 int NAND_IS_AND ;
 int NAND_USE_FLASH_BBT ;
 int agand_flashbased ;
 int bbt_main_descr ;
 int bbt_mirror_descr ;
 int largepage_flashbased ;
 int largepage_memorybased ;
 int nand_scan_bbt (struct mtd_info*,int *) ;
 int smallpage_flashbased ;
 int smallpage_memorybased ;

int nand_default_bbt(struct mtd_info *mtd)
{
 struct nand_chip *this = mtd->priv;
 if (this->options & NAND_IS_AND) {

  if (!this->bbt_td) {
   this->bbt_td = &bbt_main_descr;
   this->bbt_md = &bbt_mirror_descr;
  }
  this->options |= NAND_USE_FLASH_BBT;
  return nand_scan_bbt(mtd, &agand_flashbased);
 }


 if (this->options & NAND_USE_FLASH_BBT) {

  if (!this->bbt_td) {
   this->bbt_td = &bbt_main_descr;
   this->bbt_md = &bbt_mirror_descr;
  }
  if (!this->badblock_pattern) {
   this->badblock_pattern = (mtd->writesize > 512) ? &largepage_flashbased : &smallpage_flashbased;
  }
 } else {
  this->bbt_td = ((void*)0);
  this->bbt_md = ((void*)0);
  if (!this->badblock_pattern) {
   this->badblock_pattern = (mtd->writesize > 512) ?
       &largepage_memorybased : &smallpage_memorybased;
  }
 }
 return nand_scan_bbt(mtd, this->badblock_pattern);
}
