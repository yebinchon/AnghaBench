
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
 int TS_NAND_CTRL ;
 int readb (int ) ;
 int writeb (int,int ) ;

__attribute__((used)) static void ts78xx_ts_nand_cmd_ctrl(struct mtd_info *mtd, int cmd,
   unsigned int ctrl)
{
 struct nand_chip *this = mtd->priv;

 if (ctrl & NAND_CTRL_CHANGE) {
  unsigned char bits;

  bits = (ctrl & NAND_NCE) << 2;
  bits |= ctrl & NAND_CLE;
  bits |= (ctrl & NAND_ALE) >> 2;

  writeb((readb(TS_NAND_CTRL) & ~0x7) | bits, TS_NAND_CTRL);
 }

 if (cmd != NAND_CMD_NONE)
  writeb(cmd, this->IO_ADDR_W);
}
