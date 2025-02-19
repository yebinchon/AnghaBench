
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {scalar_t__ IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;


 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void migor_nand_flash_cmd_ctl(struct mtd_info *mtd, int cmd,
         unsigned int ctrl)
{
 struct nand_chip *chip = mtd->priv;

 if (cmd == NAND_CMD_NONE)
  return;

 if (ctrl & NAND_CLE)
  writeb(cmd, chip->IO_ADDR_W + 0x00400000);
 else if (ctrl & NAND_ALE)
  writeb(cmd, chip->IO_ADDR_W + 0x00800000);
 else
  writeb(cmd, chip->IO_ADDR_W);
}
