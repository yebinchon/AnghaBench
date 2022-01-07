
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndfc_controller {scalar_t__ ndfcbase; } ;
struct mtd_info {int dummy; } ;


 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 scalar_t__ NDFC_ALE ;
 scalar_t__ NDFC_CMD ;
 struct ndfc_controller ndfc_ctrl ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ndfc_hwcontrol(struct mtd_info *mtd, int cmd, unsigned int ctrl)
{
 struct ndfc_controller *ndfc = &ndfc_ctrl;

 if (cmd == NAND_CMD_NONE)
  return;

 if (ctrl & NAND_CLE)
  writel(cmd & 0xFF, ndfc->ndfcbase + NDFC_CMD);
 else
  writel(cmd & 0xFF, ndfc->ndfcbase + NDFC_ALE);
}
