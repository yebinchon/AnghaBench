
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {struct fsl_elbc_mtd* priv; } ;
struct mtd_info {unsigned int writesize; unsigned int oobsize; struct nand_chip* priv; } ;
struct fsl_elbc_mtd {struct fsl_elbc_ctrl* ctrl; } ;
struct fsl_elbc_ctrl {unsigned int index; int * addr; int dev; scalar_t__ status; } ;


 int dev_err (int ,char*,int,...) ;
 int in_8 (int *) ;
 int memcpy_toio (int *,int const*,int) ;

__attribute__((used)) static void fsl_elbc_write_buf(struct mtd_info *mtd, const u8 *buf, int len)
{
 struct nand_chip *chip = mtd->priv;
 struct fsl_elbc_mtd *priv = chip->priv;
 struct fsl_elbc_ctrl *ctrl = priv->ctrl;
 unsigned int bufsize = mtd->writesize + mtd->oobsize;

 if (len <= 0) {
  dev_err(ctrl->dev, "write_buf of %d bytes", len);
  ctrl->status = 0;
  return;
 }

 if ((unsigned int)len > bufsize - ctrl->index) {
  dev_err(ctrl->dev,
          "write_buf beyond end of buffer "
          "(%d requested, %u available)\n",
          len, bufsize - ctrl->index);
  len = bufsize - ctrl->index;
 }

 memcpy_toio(&ctrl->addr[ctrl->index], buf, len);







 in_8(&ctrl->addr[ctrl->index] + len - 1);

 ctrl->index += len;
}
