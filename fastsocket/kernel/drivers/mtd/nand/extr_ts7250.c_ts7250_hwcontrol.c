
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
 unsigned long TS72XX_NAND_CONTROL_VIRT_BASE ;
 int __raw_readb (unsigned long) ;
 int __raw_writeb (int,unsigned long) ;
 int writeb (int,int ) ;

__attribute__((used)) static void ts7250_hwcontrol(struct mtd_info *mtd, int cmd, unsigned int ctrl)
{
 struct nand_chip *chip = mtd->priv;

 if (ctrl & NAND_CTRL_CHANGE) {
  unsigned long addr = TS72XX_NAND_CONTROL_VIRT_BASE;
  unsigned char bits;

  bits = (ctrl & NAND_NCE) << 2;
  bits |= ctrl & NAND_CLE;
  bits |= (ctrl & NAND_ALE) >> 2;

  __raw_writeb((__raw_readb(addr) & ~0x7) | bits, addr);
 }

 if (cmd != NAND_CMD_NONE)
  writeb(cmd, chip->IO_ADDR_W);
}
