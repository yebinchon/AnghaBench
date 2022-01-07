
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mtd_oob_ops {size_t len; int * datbuf; int * oobbuf; int ooblen; scalar_t__ ooboffs; int mode; } ;
struct mtd_info {int (* read_oob ) (struct mtd_info*,int ,struct mtd_oob_ops*) ;int oobsize; } ;
typedef int loff_t ;


 int MTD_OOB_RAW ;
 int stub1 (struct mtd_info*,int ,struct mtd_oob_ops*) ;

__attribute__((used)) static int scan_read_raw(struct mtd_info *mtd, uint8_t *buf, loff_t offs,
    size_t len)
{
 struct mtd_oob_ops ops;

 ops.mode = MTD_OOB_RAW;
 ops.ooboffs = 0;
 ops.ooblen = mtd->oobsize;
 ops.oobbuf = buf;
 ops.datbuf = buf;
 ops.len = len;

 return mtd->read_oob(mtd, offs, &ops);
}
