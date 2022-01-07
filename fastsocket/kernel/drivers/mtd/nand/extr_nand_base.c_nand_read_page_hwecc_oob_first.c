
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_7__ {int size; int bytes; int steps; int total; int (* correct ) (struct mtd_info*,int *,int *,int *) ;int (* calculate ) (struct mtd_info*,int *,int *) ;int (* hwctl ) (struct mtd_info*,int ) ;TYPE_1__* layout; } ;
struct nand_chip {TYPE_3__ ecc; int (* read_buf ) (struct mtd_info*,int *,int) ;int * oob_poi; int (* cmdfunc ) (struct mtd_info*,int ,int ,int) ;TYPE_2__* buffers; } ;
struct TYPE_8__ {int corrected; int failed; } ;
struct mtd_info {int oobsize; TYPE_4__ ecc_stats; } ;
struct TYPE_6__ {int * ecccalc; int * ecccode; } ;
struct TYPE_5__ {size_t* eccpos; } ;


 int NAND_CMD_READ0 ;
 int NAND_CMD_READOOB ;
 int NAND_ECC_READ ;
 int stub1 (struct mtd_info*,int ,int ,int) ;
 int stub2 (struct mtd_info*,int *,int) ;
 int stub3 (struct mtd_info*,int ,int ,int) ;
 int stub4 (struct mtd_info*,int ) ;
 int stub5 (struct mtd_info*,int *,int) ;
 int stub6 (struct mtd_info*,int *,int *) ;
 int stub7 (struct mtd_info*,int *,int *,int *) ;

__attribute__((used)) static int nand_read_page_hwecc_oob_first(struct mtd_info *mtd,
 struct nand_chip *chip, uint8_t *buf, int page)
{
 int i, eccsize = chip->ecc.size;
 int eccbytes = chip->ecc.bytes;
 int eccsteps = chip->ecc.steps;
 uint8_t *p = buf;
 uint8_t *ecc_code = chip->buffers->ecccode;
 uint32_t *eccpos = chip->ecc.layout->eccpos;
 uint8_t *ecc_calc = chip->buffers->ecccalc;


 chip->cmdfunc(mtd, NAND_CMD_READOOB, 0, page);
 chip->read_buf(mtd, chip->oob_poi, mtd->oobsize);
 chip->cmdfunc(mtd, NAND_CMD_READ0, 0, page);

 for (i = 0; i < chip->ecc.total; i++)
  ecc_code[i] = chip->oob_poi[eccpos[i]];

 for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
  int stat;

  chip->ecc.hwctl(mtd, NAND_ECC_READ);
  chip->read_buf(mtd, p, eccsize);
  chip->ecc.calculate(mtd, p, &ecc_calc[i]);

  stat = chip->ecc.correct(mtd, p, &ecc_code[i], ((void*)0));
  if (stat < 0)
   mtd->ecc_stats.failed++;
  else
   mtd->ecc_stats.corrected += stat;
 }
 return 0;
}
