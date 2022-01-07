
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int (* waitfunc ) (struct mtd_info*,struct nand_chip*) ;int (* cmdfunc ) (struct mtd_info*,int ,int,int) ;int oob_poi; int (* write_buf ) (struct mtd_info*,int ,int ) ;} ;
struct mtd_info {int writesize; int oobsize; } ;


 int EIO ;
 int NAND_CMD_PAGEPROG ;
 int NAND_CMD_SEQIN ;
 int NAND_STATUS_FAIL ;
 int stub1 (struct mtd_info*,int ,int,int) ;
 int stub2 (struct mtd_info*,int ,int ) ;
 int stub3 (struct mtd_info*,int ,int,int) ;
 int stub4 (struct mtd_info*,struct nand_chip*) ;

__attribute__((used)) static int cafe_nand_write_oob(struct mtd_info *mtd,
          struct nand_chip *chip, int page)
{
 int status = 0;

 chip->cmdfunc(mtd, NAND_CMD_SEQIN, mtd->writesize, page);
 chip->write_buf(mtd, chip->oob_poi, mtd->oobsize);
 chip->cmdfunc(mtd, NAND_CMD_PAGEPROG, -1, -1);
 status = chip->waitfunc(mtd, chip);

 return status & NAND_STATUS_FAIL ? -EIO : 0;
}
