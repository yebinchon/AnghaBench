
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const uint8_t ;
struct TYPE_2__ {int size; int bytes; int steps; int prepad; int postpad; int (* calculate ) (struct mtd_info*,int const*,int const*) ;int (* hwctl ) (struct mtd_info*,int ) ;} ;
struct nand_chip {int (* write_buf ) (struct mtd_info*,int const*,int) ;int const* oob_poi; TYPE_1__ ecc; } ;
struct mtd_info {int oobsize; } ;


 int NAND_ECC_WRITE ;
 int stub1 (struct mtd_info*,int ) ;
 int stub2 (struct mtd_info*,int const*,int) ;
 int stub3 (struct mtd_info*,int const*,int) ;
 int stub4 (struct mtd_info*,int const*,int const*) ;
 int stub5 (struct mtd_info*,int const*,int) ;
 int stub6 (struct mtd_info*,int const*,int) ;
 int stub7 (struct mtd_info*,int const*,int) ;

__attribute__((used)) static void nand_write_page_syndrome(struct mtd_info *mtd,
        struct nand_chip *chip, const uint8_t *buf)
{
 int i, eccsize = chip->ecc.size;
 int eccbytes = chip->ecc.bytes;
 int eccsteps = chip->ecc.steps;
 const uint8_t *p = buf;
 uint8_t *oob = chip->oob_poi;

 for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {

  chip->ecc.hwctl(mtd, NAND_ECC_WRITE);
  chip->write_buf(mtd, p, eccsize);

  if (chip->ecc.prepad) {
   chip->write_buf(mtd, oob, chip->ecc.prepad);
   oob += chip->ecc.prepad;
  }

  chip->ecc.calculate(mtd, p, oob);
  chip->write_buf(mtd, oob, eccbytes);
  oob += eccbytes;

  if (chip->ecc.postpad) {
   chip->write_buf(mtd, oob, chip->ecc.postpad);
   oob += chip->ecc.postpad;
  }
 }


 i = mtd->oobsize - (oob - chip->oob_poi);
 if (i)
  chip->write_buf(mtd, oob, i);
}
