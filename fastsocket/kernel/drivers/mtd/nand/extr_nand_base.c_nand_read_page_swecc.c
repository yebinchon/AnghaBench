
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
struct TYPE_7__ {int size; int bytes; int steps; int total; int (* correct ) (struct mtd_info*,int *,int *,int *) ;int (* calculate ) (struct mtd_info*,int *,int *) ;int (* read_page_raw ) (struct mtd_info*,struct nand_chip*,int *,int) ;TYPE_2__* layout; } ;
struct nand_chip {TYPE_3__ ecc; int * oob_poi; TYPE_1__* buffers; } ;
struct TYPE_8__ {int corrected; int failed; } ;
struct mtd_info {TYPE_4__ ecc_stats; } ;
struct TYPE_6__ {size_t* eccpos; } ;
struct TYPE_5__ {int * ecccode; int * ecccalc; } ;


 int stub1 (struct mtd_info*,struct nand_chip*,int *,int) ;
 int stub2 (struct mtd_info*,int *,int *) ;
 int stub3 (struct mtd_info*,int *,int *,int *) ;

__attribute__((used)) static int nand_read_page_swecc(struct mtd_info *mtd, struct nand_chip *chip,
    uint8_t *buf, int page)
{
 int i, eccsize = chip->ecc.size;
 int eccbytes = chip->ecc.bytes;
 int eccsteps = chip->ecc.steps;
 uint8_t *p = buf;
 uint8_t *ecc_calc = chip->buffers->ecccalc;
 uint8_t *ecc_code = chip->buffers->ecccode;
 uint32_t *eccpos = chip->ecc.layout->eccpos;

 chip->ecc.read_page_raw(mtd, chip, buf, page);

 for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
  chip->ecc.calculate(mtd, p, &ecc_calc[i]);

 for (i = 0; i < chip->ecc.total; i++)
  ecc_code[i] = chip->oob_poi[eccpos[i]];

 eccsteps = chip->ecc.steps;
 p = buf;

 for (i = 0 ; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
  int stat;

  stat = chip->ecc.correct(mtd, p, &ecc_code[i], &ecc_calc[i]);
  if (stat < 0)
   mtd->ecc_stats.failed++;
  else
   mtd->ecc_stats.corrected += stat;
 }
 return 0;
}
