
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 unsigned short NBUSYIRQ ;
 unsigned short bfin_read_NFC_IRQSTAT () ;

__attribute__((used)) static int bf5xx_nand_devready(struct mtd_info *mtd)
{
 unsigned short val = bfin_read_NFC_IRQSTAT();

 if ((val & NBUSYIRQ) == NBUSYIRQ)
  return 1;
 else
  return 0;
}
