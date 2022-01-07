
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mtd_oob_ops {int ooboffs; size_t len; size_t retlen; int * datbuf; int * oobbuf; int ooblen; int mode; } ;
struct mtd_info {int (* write_oob ) (struct mtd_info*,int,struct mtd_oob_ops*) ;int writesize; int oobsize; } ;
typedef int loff_t ;


 int MTD_OOB_PLACE ;
 int stub1 (struct mtd_info*,int,struct mtd_oob_ops*) ;

__attribute__((used)) static int inftl_write(struct mtd_info *mtd, loff_t offs, size_t len,
         size_t *retlen, uint8_t *buf, uint8_t *oob)
{
 struct mtd_oob_ops ops;
 int res;

 ops.mode = MTD_OOB_PLACE;
 ops.ooboffs = offs;
 ops.ooblen = mtd->oobsize;
 ops.oobbuf = oob;
 ops.datbuf = buf;
 ops.len = len;

 res = mtd->write_oob(mtd, offs & ~(mtd->writesize - 1), &ops);
 *retlen = ops.retlen;
 return res;
}
