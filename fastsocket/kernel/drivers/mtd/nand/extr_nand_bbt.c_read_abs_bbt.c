
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int numchips; int chipsize; int bbt_erase_shift; } ;
struct nand_bbt_descr {int options; int reserved_block_code; int * pages; } ;
struct mtd_info {int size; struct nand_chip* priv; } ;


 int NAND_BBT_NRBITS_MSK ;
 int NAND_BBT_PERCHIP ;
 int read_bbt (struct mtd_info*,int *,int ,int,int,int,int ) ;

__attribute__((used)) static int read_abs_bbt(struct mtd_info *mtd, uint8_t *buf, struct nand_bbt_descr *td, int chip)
{
 struct nand_chip *this = mtd->priv;
 int res = 0, i;
 int bits;

 bits = td->options & NAND_BBT_NRBITS_MSK;
 if (td->options & NAND_BBT_PERCHIP) {
  int offs = 0;
  for (i = 0; i < this->numchips; i++) {
   if (chip == -1 || chip == i)
    res = read_bbt (mtd, buf, td->pages[i], this->chipsize >> this->bbt_erase_shift, bits, offs, td->reserved_block_code);
   if (res)
    return res;
   offs += this->chipsize >> (this->bbt_erase_shift + 2);
  }
 } else {
  res = read_bbt (mtd, buf, td->pages[0], mtd->size >> this->bbt_erase_shift, bits, 0, td->reserved_block_code);
  if (res)
   return res;
 }
 return 0;
}
