
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int size; int bytes; int steps; int prepad; int (* correct ) (struct mtd_info*,int *,int *,int *) ;int postpad; int (* hwctl ) (struct mtd_info*,int ) ;} ;
struct nand_chip {int (* read_buf ) (struct mtd_info*,int *,int) ;int * oob_poi; TYPE_2__ ecc; } ;
struct TYPE_3__ {int corrected; int failed; } ;
struct mtd_info {int oobsize; TYPE_1__ ecc_stats; } ;


 int NAND_ECC_READ ;
 int NAND_ECC_READSYN ;
 int stub1 (struct mtd_info*,int ) ;
 int stub2 (struct mtd_info*,int *,int) ;
 int stub3 (struct mtd_info*,int *,int) ;
 int stub4 (struct mtd_info*,int ) ;
 int stub5 (struct mtd_info*,int *,int) ;
 int stub6 (struct mtd_info*,int *,int *,int *) ;
 int stub7 (struct mtd_info*,int *,int) ;
 int stub8 (struct mtd_info*,int *,int) ;

__attribute__((used)) static int nand_read_page_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
       uint8_t *buf, int page)
{
 int i, eccsize = chip->ecc.size;
 int eccbytes = chip->ecc.bytes;
 int eccsteps = chip->ecc.steps;
 uint8_t *p = buf;
 uint8_t *oob = chip->oob_poi;

 for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
  int stat;

  chip->ecc.hwctl(mtd, NAND_ECC_READ);
  chip->read_buf(mtd, p, eccsize);

  if (chip->ecc.prepad) {
   chip->read_buf(mtd, oob, chip->ecc.prepad);
   oob += chip->ecc.prepad;
  }

  chip->ecc.hwctl(mtd, NAND_ECC_READSYN);
  chip->read_buf(mtd, oob, eccbytes);
  stat = chip->ecc.correct(mtd, p, oob, ((void*)0));

  if (stat < 0)
   mtd->ecc_stats.failed++;
  else
   mtd->ecc_stats.corrected += stat;

  oob += eccbytes;

  if (chip->ecc.postpad) {
   chip->read_buf(mtd, oob, chip->ecc.postpad);
   oob += chip->ecc.postpad;
  }
 }


 i = mtd->oobsize - (oob - chip->oob_poi);
 if (i)
  chip->read_buf(mtd, oob, i);

 return 0;
}
