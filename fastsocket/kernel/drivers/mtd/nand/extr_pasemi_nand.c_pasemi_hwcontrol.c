
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {scalar_t__ IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;


 int ALE_PIN_CTL ;
 int CLE_PIN_CTL ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 int eieio () ;
 int inl (int ) ;
 int lpcctl ;
 int out_8 (scalar_t__,int) ;

__attribute__((used)) static void pasemi_hwcontrol(struct mtd_info *mtd, int cmd,
        unsigned int ctrl)
{
 struct nand_chip *chip = mtd->priv;

 if (cmd == NAND_CMD_NONE)
  return;

 if (ctrl & NAND_CLE)
  out_8(chip->IO_ADDR_W + (1 << CLE_PIN_CTL), cmd);
 else
  out_8(chip->IO_ADDR_W + (1 << ALE_PIN_CTL), cmd);


 eieio();
 inl(lpcctl);
}
