
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nand_chip {int page_shift; int pagemask; int chip_shift; int options; int badblockpos; int (* read_byte ) (struct mtd_info*) ;int (* cmdfunc ) (struct mtd_info*,int ,int,int) ;int (* read_word ) (struct mtd_info*) ;int (* select_chip ) (struct mtd_info*,int) ;} ;
struct mtd_info {struct nand_chip* priv; } ;
typedef int loff_t ;


 int FL_READING ;
 int NAND_BUSWIDTH_16 ;
 int NAND_CMD_READOOB ;
 int cpu_to_le16 (int ) ;
 int nand_get_device (struct nand_chip*,struct mtd_info*,int ) ;
 int nand_release_device (struct mtd_info*) ;
 int stub1 (struct mtd_info*,int) ;
 int stub2 (struct mtd_info*,int ,int,int) ;
 int stub3 (struct mtd_info*) ;
 int stub4 (struct mtd_info*,int ,int,int) ;
 int stub5 (struct mtd_info*) ;

__attribute__((used)) static int nand_block_bad(struct mtd_info *mtd, loff_t ofs, int getchip)
{
 int page, chipnr, res = 0;
 struct nand_chip *chip = mtd->priv;
 u16 bad;

 page = (int)(ofs >> chip->page_shift) & chip->pagemask;

 if (getchip) {
  chipnr = (int)(ofs >> chip->chip_shift);

  nand_get_device(chip, mtd, FL_READING);


  chip->select_chip(mtd, chipnr);
 }

 if (chip->options & NAND_BUSWIDTH_16) {
  chip->cmdfunc(mtd, NAND_CMD_READOOB, chip->badblockpos & 0xFE,
         page);
  bad = cpu_to_le16(chip->read_word(mtd));
  if (chip->badblockpos & 0x1)
   bad >>= 8;
  if ((bad & 0xFF) != 0xff)
   res = 1;
 } else {
  chip->cmdfunc(mtd, NAND_CMD_READOOB, chip->badblockpos, page);
  if (chip->read_byte(mtd) != 0xff)
   res = 1;
 }

 if (getchip)
  nand_release_device(mtd);

 return res;
}
