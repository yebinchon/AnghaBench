
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int size; int bytes; int (* correct ) (struct mtd_info*,int *,int *,int *) ;TYPE_1__* layout; } ;
struct nand_chip {int (* read_buf ) (struct mtd_info*,int *,int) ;int (* cmdfunc ) (struct mtd_info*,int ,scalar_t__,int) ;TYPE_2__ ecc; struct atmel_nand_host* priv; int * oob_poi; } ;
struct TYPE_6__ {int corrected; int failed; } ;
struct mtd_info {scalar_t__ writesize; int oobsize; TYPE_3__ ecc_stats; } ;
struct atmel_nand_host {int ecc; } ;
struct TYPE_4__ {scalar_t__* eccpos; } ;


 int ATMEL_ECC_RST ;
 int CR ;
 int NAND_CMD_RNDOUT ;
 scalar_t__ cpu_is_at32ap7000 () ;
 int ecc_writel (int ,int ,int ) ;
 int stub1 (struct mtd_info*,int *,int) ;
 int stub2 (struct mtd_info*,int ,scalar_t__,int) ;
 int stub3 (struct mtd_info*,int *,int) ;
 int stub4 (struct mtd_info*,int *,int *,int *) ;
 int stub5 (struct mtd_info*,int ,scalar_t__,int) ;
 int stub6 (struct mtd_info*,int *,int) ;

__attribute__((used)) static int atmel_nand_read_page(struct mtd_info *mtd,
  struct nand_chip *chip, uint8_t *buf, int page)
{
 int eccsize = chip->ecc.size;
 int eccbytes = chip->ecc.bytes;
 uint32_t *eccpos = chip->ecc.layout->eccpos;
 uint8_t *p = buf;
 uint8_t *oob = chip->oob_poi;
 uint8_t *ecc_pos;
 int stat;
 if (cpu_is_at32ap7000()) {
  struct atmel_nand_host *host = chip->priv;
  ecc_writel(host->ecc, CR, ATMEL_ECC_RST);
 }


 chip->read_buf(mtd, p, eccsize);


 if (eccpos[0] != 0) {






  chip->cmdfunc(mtd, NAND_CMD_RNDOUT,
    mtd->writesize + eccpos[0], -1);
 }


 ecc_pos = oob + eccpos[0];
 chip->read_buf(mtd, ecc_pos, eccbytes);


 stat = chip->ecc.correct(mtd, p, oob, ((void*)0));

 if (stat < 0)
  mtd->ecc_stats.failed++;
 else
  mtd->ecc_stats.corrected += stat;


 chip->cmdfunc(mtd, NAND_CMD_RNDOUT, mtd->writesize, -1);


 chip->read_buf(mtd, oob, mtd->oobsize);

 return 0;
}
