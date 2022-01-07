
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mtd_info {int dummy; } ;


 unsigned short RD_RDY ;
 int SSYNC () ;
 int WB_FULL ;
 unsigned short bfin_read_NFC_IRQSTAT () ;
 int bfin_read_NFC_READ () ;
 int bfin_read_NFC_STAT () ;
 int bfin_write_NFC_DATA_RD (int) ;
 int bfin_write_NFC_IRQSTAT (unsigned short) ;
 int cpu_relax () ;

__attribute__((used)) static void bf5xx_nand_read_buf(struct mtd_info *mtd, uint8_t *buf, int len)
{
 int i;
 unsigned short val;





 for (i = 0; i < len; i++) {
  while (bfin_read_NFC_STAT() & WB_FULL)
   cpu_relax();


  bfin_write_NFC_DATA_RD(0x0000);
  SSYNC();

  while ((bfin_read_NFC_IRQSTAT() & RD_RDY) != RD_RDY)
   cpu_relax();

  buf[i] = bfin_read_NFC_READ();

  val = bfin_read_NFC_IRQSTAT();
  val |= RD_RDY;
  bfin_write_NFC_IRQSTAT(val);
  SSYNC();
 }
}
