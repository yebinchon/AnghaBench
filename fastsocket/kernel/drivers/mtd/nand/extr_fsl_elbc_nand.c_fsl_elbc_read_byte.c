
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {struct fsl_elbc_mtd* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;
struct fsl_elbc_mtd {struct fsl_elbc_ctrl* ctrl; } ;
struct fsl_elbc_ctrl {scalar_t__ index; scalar_t__ read_bytes; int dev; int * addr; } ;


 int ERR_BYTE ;
 int dev_err (int ,char*) ;
 int in_8 (int *) ;

__attribute__((used)) static u8 fsl_elbc_read_byte(struct mtd_info *mtd)
{
 struct nand_chip *chip = mtd->priv;
 struct fsl_elbc_mtd *priv = chip->priv;
 struct fsl_elbc_ctrl *ctrl = priv->ctrl;


 if (ctrl->index < ctrl->read_bytes)
  return in_8(&ctrl->addr[ctrl->index++]);

 dev_err(ctrl->dev, "read_byte beyond end of buffer\n");
 return ERR_BYTE;
}
