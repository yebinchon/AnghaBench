
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u16 ;
struct mtd_info {int dummy; } ;


 int SSYNC () ;
 int bfin_write_NFC_DATA_WR (int ) ;

__attribute__((used)) static void bf5xx_nand_write_buf16(struct mtd_info *mtd,
    const uint8_t *buf, int len)
{
 int i;
 u16 *p = (u16 *) buf;
 len >>= 1;

 for (i = 0; i < len; i++)
  bfin_write_NFC_DATA_WR(p[i]);

 SSYNC();
}
