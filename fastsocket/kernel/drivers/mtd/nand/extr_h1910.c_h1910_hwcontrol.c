
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {unsigned int IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int NAND_CMD_NONE ;
 int writeb (int,unsigned int) ;

__attribute__((used)) static void h1910_hwcontrol(struct mtd_info *mtd, int cmd,
       unsigned int ctrl)
{
 struct nand_chip *chip = mtd->priv;

 if (cmd != NAND_CMD_NONE)
  writeb(cmd, chip->IO_ADDR_W | ((ctrl & 0x6) << 1));
}
