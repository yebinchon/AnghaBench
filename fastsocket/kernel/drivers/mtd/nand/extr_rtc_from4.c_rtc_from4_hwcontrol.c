
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;


 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 int RTC_FROM4_ALE ;
 int RTC_FROM4_CLE ;
 int writeb (int,int) ;

__attribute__((used)) static void rtc_from4_hwcontrol(struct mtd_info *mtd, int cmd,
    unsigned int ctrl)
{
 struct nand_chip *chip = (mtd->priv);

 if (cmd == NAND_CMD_NONE)
  return;

 if (ctrl & NAND_CLE)
  writeb(cmd, chip->IO_ADDR_W | RTC_FROM4_CLE);
 else
  writeb(cmd, chip->IO_ADDR_W | RTC_FROM4_ALE);
}
