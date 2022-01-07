
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {scalar_t__ IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;


 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 unsigned long PALMTX_NAND_ALE_VIRT ;
 unsigned long PALMTX_NAND_CLE_VIRT ;
 int writeb (int,unsigned long) ;

__attribute__((used)) static void palmtx_nand_cmd_ctl(struct mtd_info *mtd, int cmd,
     unsigned int ctrl)
{
 struct nand_chip *this = mtd->priv;
 unsigned long nandaddr = (unsigned long)this->IO_ADDR_W;

 if (cmd == NAND_CMD_NONE)
  return;

 if (ctrl & NAND_CLE)
  writeb(cmd, PALMTX_NAND_CLE_VIRT);
 else if (ctrl & NAND_ALE)
  writeb(cmd, PALMTX_NAND_ALE_VIRT);
 else
  writeb(cmd, nandaddr);
}
