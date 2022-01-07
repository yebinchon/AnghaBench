
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;


 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 unsigned int NAND_CTRL_CHANGE ;
 unsigned int NAND_NCE ;
 int clps_readb (int ) ;
 int clps_writeb (int,int ) ;
 int ep7312_pxdr ;
 int writeb (int,int ) ;

__attribute__((used)) static void ep7312_hwcontrol(struct mtd_info *mtd, int cmd, unsigned int ctrl)
{
 struct nand_chip *chip = mtd->priv;

 if (ctrl & NAND_CTRL_CHANGE) {
  unsigned char bits = 0x80;

  bits |= (ctrl & (NAND_CLE | NAND_ALE)) << 3;
  bits |= (ctrl & NAND_NCE) ? 0x00 : 0x40;

  clps_writeb((clps_readb(ep7312_pxdr) & 0xF0) | bits,
       ep7312_pxdr);
 }
 if (cmd != NAND_CMD_NONE)
  writeb(cmd, chip->IO_ADDR_W);
}
