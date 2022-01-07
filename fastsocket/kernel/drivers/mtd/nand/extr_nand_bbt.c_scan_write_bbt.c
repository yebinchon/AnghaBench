
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mtd_oob_ops {size_t len; int * oobbuf; int * datbuf; int ooblen; scalar_t__ ooboffs; int mode; } ;
struct mtd_info {int (* write_oob ) (struct mtd_info*,int ,struct mtd_oob_ops*) ;int oobsize; } ;
typedef int loff_t ;


 int MTD_OOB_PLACE ;
 int stub1 (struct mtd_info*,int ,struct mtd_oob_ops*) ;

__attribute__((used)) static int scan_write_bbt(struct mtd_info *mtd, loff_t offs, size_t len,
     uint8_t *buf, uint8_t *oob)
{
 struct mtd_oob_ops ops;

 ops.mode = MTD_OOB_PLACE;
 ops.ooboffs = 0;
 ops.ooblen = mtd->oobsize;
 ops.datbuf = buf;
 ops.oobbuf = oob;
 ops.len = len;

 return mtd->write_oob(mtd, offs, &ops);
}
