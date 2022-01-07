
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {scalar_t__ IO_ADDR_R; scalar_t__ IO_ADDR_W; int (* cmd_ctrl ) (struct mtd_info*,int ,int) ;} ;
struct mtd_info {struct nand_chip* priv; } ;
struct fsl_upm_nand {int mchip_number; scalar_t__* mchip_offsets; scalar_t__ io_base; } ;


 int BUG () ;
 int NAND_CMD_NONE ;
 int NAND_CTRL_CHANGE ;
 int stub1 (struct mtd_info*,int ,int) ;
 struct fsl_upm_nand* to_fsl_upm_nand (struct mtd_info*) ;

__attribute__((used)) static void fun_select_chip(struct mtd_info *mtd, int mchip_nr)
{
 struct nand_chip *chip = mtd->priv;
 struct fsl_upm_nand *fun = to_fsl_upm_nand(mtd);

 if (mchip_nr == -1) {
  chip->cmd_ctrl(mtd, NAND_CMD_NONE, 0 | NAND_CTRL_CHANGE);
 } else if (mchip_nr >= 0) {
  fun->mchip_number = mchip_nr;
  chip->IO_ADDR_R = fun->io_base + fun->mchip_offsets[mchip_nr];
  chip->IO_ADDR_W = chip->IO_ADDR_R;
 } else {
  BUG();
 }
}
