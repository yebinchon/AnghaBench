
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nand_chip {int IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;
struct TYPE_4__ {int width; } ;
struct fsl_upm_nand {unsigned int last_ctrl; int* mchip_offsets; size_t mchip_number; int wait_flags; TYPE_1__ upm; int upm_cmd_offset; int upm_addr_offset; } ;


 int FSL_UPM_WAIT_RUN_PATTERN ;
 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 unsigned int NAND_CTRL_CHANGE ;
 int fsl_upm_end_pattern (TYPE_1__*) ;
 int fsl_upm_run_pattern (TYPE_1__*,int ,int) ;
 int fsl_upm_start_pattern (TYPE_1__*,int ) ;
 int fun_wait_rnb (struct fsl_upm_nand*) ;
 struct fsl_upm_nand* to_fsl_upm_nand (struct mtd_info*) ;

__attribute__((used)) static void fun_cmd_ctrl(struct mtd_info *mtd, int cmd, unsigned int ctrl)
{
 struct nand_chip *chip = mtd->priv;
 struct fsl_upm_nand *fun = to_fsl_upm_nand(mtd);
 u32 mar;

 if (!(ctrl & fun->last_ctrl)) {
  fsl_upm_end_pattern(&fun->upm);

  if (cmd == NAND_CMD_NONE)
   return;

  fun->last_ctrl = ctrl & (NAND_ALE | NAND_CLE);
 }

 if (ctrl & NAND_CTRL_CHANGE) {
  if (ctrl & NAND_ALE)
   fsl_upm_start_pattern(&fun->upm, fun->upm_addr_offset);
  else if (ctrl & NAND_CLE)
   fsl_upm_start_pattern(&fun->upm, fun->upm_cmd_offset);
 }

 mar = (cmd << (32 - fun->upm.width)) |
  fun->mchip_offsets[fun->mchip_number];
 fsl_upm_run_pattern(&fun->upm, chip->IO_ADDR_R, mar);

 if (fun->wait_flags & FSL_UPM_WAIT_RUN_PATTERN)
  fun_wait_rnb(fun);
}
