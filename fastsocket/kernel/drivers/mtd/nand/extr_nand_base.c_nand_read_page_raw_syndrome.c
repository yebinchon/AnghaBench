
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int size; int bytes; int steps; int prepad; int postpad; } ;
struct nand_chip {int (* read_buf ) (struct mtd_info*,int *,int) ;int * oob_poi; TYPE_1__ ecc; } ;
struct mtd_info {int oobsize; } ;


 int stub1 (struct mtd_info*,int *,int) ;
 int stub2 (struct mtd_info*,int *,int) ;
 int stub3 (struct mtd_info*,int *,int) ;
 int stub4 (struct mtd_info*,int *,int) ;
 int stub5 (struct mtd_info*,int *,int) ;

__attribute__((used)) static int nand_read_page_raw_syndrome(struct mtd_info *mtd, struct nand_chip *chip,
         uint8_t *buf, int page)
{
 int eccsize = chip->ecc.size;
 int eccbytes = chip->ecc.bytes;
 uint8_t *oob = chip->oob_poi;
 int steps, size;

 for (steps = chip->ecc.steps; steps > 0; steps--) {
  chip->read_buf(mtd, buf, eccsize);
  buf += eccsize;

  if (chip->ecc.prepad) {
   chip->read_buf(mtd, oob, chip->ecc.prepad);
   oob += chip->ecc.prepad;
  }

  chip->read_buf(mtd, oob, eccbytes);
  oob += eccbytes;

  if (chip->ecc.postpad) {
   chip->read_buf(mtd, oob, chip->ecc.postpad);
   oob += chip->ecc.postpad;
  }
 }

 size = mtd->oobsize - (oob - chip->oob_poi);
 if (size)
  chip->read_buf(mtd, oob, size);

 return 0;
}
