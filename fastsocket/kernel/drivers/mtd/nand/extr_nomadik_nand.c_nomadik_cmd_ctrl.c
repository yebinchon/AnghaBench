
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nomadik_nand_host {int addr_va; int cmd_va; } ;
struct nand_chip {struct nomadik_nand_host* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;


 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 int writeb (int,int ) ;

__attribute__((used)) static void nomadik_cmd_ctrl(struct mtd_info *mtd, int cmd, unsigned int ctrl)
{
 struct nand_chip *nand = mtd->priv;
 struct nomadik_nand_host *host = nand->priv;

 if (cmd == NAND_CMD_NONE)
  return;

 if (ctrl & NAND_CLE)
  writeb(cmd, host->cmd_va);
 else
  writeb(cmd, host->addr_va);
}
