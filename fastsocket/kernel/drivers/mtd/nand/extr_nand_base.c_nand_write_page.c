
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int (* write_page ) (struct mtd_info*,struct nand_chip*,int const*) ;int (* write_page_raw ) (struct mtd_info*,struct nand_chip*,int const*) ;} ;
struct nand_chip {int options; int (* waitfunc ) (struct mtd_info*,struct nand_chip*) ;int (* errstat ) (struct mtd_info*,struct nand_chip*,int ,int,int) ;scalar_t__ (* verify_buf ) (struct mtd_info*,int const*,int ) ;int (* cmdfunc ) (struct mtd_info*,int ,int,int) ;TYPE_1__ ecc; } ;
struct mtd_info {int writesize; } ;


 int EIO ;
 int FL_WRITING ;
 int NAND_CACHEPRG ;
 int NAND_CMD_CACHEDPROG ;
 int NAND_CMD_PAGEPROG ;
 int NAND_CMD_READ0 ;
 int NAND_CMD_SEQIN ;
 int NAND_STATUS_FAIL ;
 int stub1 (struct mtd_info*,int ,int,int) ;
 scalar_t__ stub10 (struct mtd_info*,int const*,int ) ;
 int stub2 (struct mtd_info*,struct nand_chip*,int const*) ;
 int stub3 (struct mtd_info*,struct nand_chip*,int const*) ;
 int stub4 (struct mtd_info*,int ,int,int) ;
 int stub5 (struct mtd_info*,struct nand_chip*) ;
 int stub6 (struct mtd_info*,struct nand_chip*,int ,int,int) ;
 int stub7 (struct mtd_info*,int ,int,int) ;
 int stub8 (struct mtd_info*,struct nand_chip*) ;
 int stub9 (struct mtd_info*,int ,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nand_write_page(struct mtd_info *mtd, struct nand_chip *chip,
      const uint8_t *buf, int page, int cached, int raw)
{
 int status;

 chip->cmdfunc(mtd, NAND_CMD_SEQIN, 0x00, page);

 if (unlikely(raw))
  chip->ecc.write_page_raw(mtd, chip, buf);
 else
  chip->ecc.write_page(mtd, chip, buf);





 cached = 0;

 if (!cached || !(chip->options & NAND_CACHEPRG)) {

  chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
  status = chip->waitfunc(mtd, chip);




  if ((status & NAND_STATUS_FAIL) && (chip->errstat))
   status = chip->errstat(mtd, chip, FL_WRITING, status,
            page);

  if (status & NAND_STATUS_FAIL)
   return -EIO;
 } else {
  chip->cmdfunc(mtd, NAND_CMD_CACHEDPROG, -1, -1);
  status = chip->waitfunc(mtd, chip);
 }
 return 0;
}
