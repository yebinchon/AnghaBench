
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_bbt_descr {int dummy; } ;
struct mtd_oob_ops {int mode; int * datbuf; scalar_t__ ooboffs; int * oobbuf; int ooblen; } ;
struct mtd_info {int (* read_oob ) (struct mtd_info*,int ,struct mtd_oob_ops*) ;scalar_t__ writesize; int oobsize; } ;
typedef int loff_t ;


 int MTD_OOB_PLACE ;
 scalar_t__ check_short_pattern (int *,struct nand_bbt_descr*) ;
 int stub1 (struct mtd_info*,int ,struct mtd_oob_ops*) ;

__attribute__((used)) static int scan_block_fast(struct mtd_info *mtd, struct nand_bbt_descr *bd,
      loff_t offs, uint8_t *buf, int len)
{
 struct mtd_oob_ops ops;
 int j, ret;

 ops.ooblen = mtd->oobsize;
 ops.oobbuf = buf;
 ops.ooboffs = 0;
 ops.datbuf = ((void*)0);
 ops.mode = MTD_OOB_PLACE;

 for (j = 0; j < len; j++) {





  ret = mtd->read_oob(mtd, offs, &ops);
  if (ret)
   return ret;

  if (check_short_pattern(buf, bd))
   return 1;

  offs += mtd->writesize;
 }
 return 0;
}
