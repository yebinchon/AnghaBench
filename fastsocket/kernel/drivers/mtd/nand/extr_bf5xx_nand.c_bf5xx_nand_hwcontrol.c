
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;


 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 int SSYNC () ;
 int WB_FULL ;
 int bfin_read_NFC_STAT () ;
 int bfin_write_NFC_ADDR (int) ;
 int bfin_write_NFC_CMD (int) ;
 int cpu_relax () ;

__attribute__((used)) static void bf5xx_nand_hwcontrol(struct mtd_info *mtd, int cmd,
       unsigned int ctrl)
{
 if (cmd == NAND_CMD_NONE)
  return;

 while (bfin_read_NFC_STAT() & WB_FULL)
  cpu_relax();

 if (ctrl & NAND_CLE)
  bfin_write_NFC_CMD(cmd);
 else
  bfin_write_NFC_ADDR(cmd);
 SSYNC();
}
