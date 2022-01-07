
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mtd_info {int dummy; } ;


 int SSYNC () ;
 int WB_FULL ;
 int bfin_read_NFC_STAT () ;
 int bfin_write_NFC_DATA_WR (int const) ;
 int cpu_relax () ;

__attribute__((used)) static void bf5xx_nand_write_buf(struct mtd_info *mtd,
    const uint8_t *buf, int len)
{
 int i;

 for (i = 0; i < len; i++) {
  while (bfin_read_NFC_STAT() & WB_FULL)
   cpu_relax();

  bfin_write_NFC_DATA_WR(buf[i]);
  SSYNC();
 }
}
