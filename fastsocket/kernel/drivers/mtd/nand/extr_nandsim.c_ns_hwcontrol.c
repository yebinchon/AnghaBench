
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cle; int ale; int ce; } ;
struct nandsim {TYPE_1__ lines; } ;
struct nand_chip {struct nandsim* priv; } ;
struct mtd_info {scalar_t__ priv; } ;


 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 unsigned int NAND_NCE ;
 int ns_nand_write_byte (struct mtd_info*,int) ;

__attribute__((used)) static void ns_hwcontrol(struct mtd_info *mtd, int cmd, unsigned int bitmask)
{
 struct nandsim *ns = ((struct nand_chip *)mtd->priv)->priv;

 ns->lines.cle = bitmask & NAND_CLE ? 1 : 0;
 ns->lines.ale = bitmask & NAND_ALE ? 1 : 0;
 ns->lines.ce = bitmask & NAND_NCE ? 1 : 0;

 if (cmd != NAND_CMD_NONE)
  ns_nand_write_byte(mtd, cmd);
}
