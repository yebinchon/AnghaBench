
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {struct atmel_nand_host* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;
struct atmel_nand_host {TYPE_1__* board; scalar_t__ io_base; } ;
struct TYPE_2__ {int cle; int ale; } ;


 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 unsigned int NAND_CTRL_CHANGE ;
 unsigned int NAND_NCE ;
 int atmel_nand_disable (struct atmel_nand_host*) ;
 int atmel_nand_enable (struct atmel_nand_host*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void atmel_nand_cmd_ctrl(struct mtd_info *mtd, int cmd, unsigned int ctrl)
{
 struct nand_chip *nand_chip = mtd->priv;
 struct atmel_nand_host *host = nand_chip->priv;

 if (ctrl & NAND_CTRL_CHANGE) {
  if (ctrl & NAND_NCE)
   atmel_nand_enable(host);
  else
   atmel_nand_disable(host);
 }
 if (cmd == NAND_CMD_NONE)
  return;

 if (ctrl & NAND_CLE)
  writeb(cmd, host->io_base + (1 << host->board->cle));
 else
  writeb(cmd, host->io_base + (1 << host->board->ale));
}
