
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_6__ {int size; int bytes; int steps; int total; int (* write_page_raw ) (struct mtd_info*,struct nand_chip*,int const*) ;int (* calculate ) (struct mtd_info*,int const*,int *) ;TYPE_2__* layout; } ;
struct nand_chip {TYPE_3__ ecc; int * oob_poi; TYPE_1__* buffers; } ;
struct mtd_info {int dummy; } ;
struct TYPE_5__ {size_t* eccpos; } ;
struct TYPE_4__ {int * ecccalc; } ;


 int stub1 (struct mtd_info*,int const*,int *) ;
 int stub2 (struct mtd_info*,struct nand_chip*,int const*) ;

__attribute__((used)) static void nand_write_page_swecc(struct mtd_info *mtd, struct nand_chip *chip,
      const uint8_t *buf)
{
 int i, eccsize = chip->ecc.size;
 int eccbytes = chip->ecc.bytes;
 int eccsteps = chip->ecc.steps;
 uint8_t *ecc_calc = chip->buffers->ecccalc;
 const uint8_t *p = buf;
 uint32_t *eccpos = chip->ecc.layout->eccpos;


 for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize)
  chip->ecc.calculate(mtd, p, &ecc_calc[i]);

 for (i = 0; i < chip->ecc.total; i++)
  chip->oob_poi[eccpos[i]] = ecc_calc[i];

 chip->ecc.write_page_raw(mtd, chip, buf);
}
