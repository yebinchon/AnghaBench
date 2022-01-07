
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_bbt_descr {int dummy; } ;
struct mtd_info {int writesize; } ;
typedef int loff_t ;


 scalar_t__ check_pattern (int *,int,int ,struct nand_bbt_descr*) ;
 int scan_read_raw (struct mtd_info*,int *,int ,size_t) ;

__attribute__((used)) static int scan_block_full(struct mtd_info *mtd, struct nand_bbt_descr *bd,
      loff_t offs, uint8_t *buf, size_t readlen,
      int scanlen, int len)
{
 int ret, j;

 ret = scan_read_raw(mtd, buf, offs, readlen);
 if (ret)
  return ret;

 for (j = 0; j < len; j++, buf += scanlen) {
  if (check_pattern(buf, scanlen, mtd->writesize, bd))
   return 1;
 }
 return 0;
}
