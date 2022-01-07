
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {struct fsl_elbc_mtd* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;
struct fsl_elbc_mtd {struct fsl_elbc_ctrl* ctrl; } ;
struct fsl_elbc_ctrl {size_t index; int dev; int * addr; scalar_t__ read_bytes; } ;


 int dev_err (int ,char*,int,int) ;
 int memcpy_fromio (int *,int *,int) ;
 int min (unsigned int,scalar_t__) ;

__attribute__((used)) static void fsl_elbc_read_buf(struct mtd_info *mtd, u8 *buf, int len)
{
 struct nand_chip *chip = mtd->priv;
 struct fsl_elbc_mtd *priv = chip->priv;
 struct fsl_elbc_ctrl *ctrl = priv->ctrl;
 int avail;

 if (len < 0)
  return;

 avail = min((unsigned int)len, ctrl->read_bytes - ctrl->index);
 memcpy_fromio(buf, &ctrl->addr[ctrl->index], avail);
 ctrl->index += avail;

 if (len > avail)
  dev_err(ctrl->dev,
          "read_buf beyond end of buffer "
          "(%d requested, %d available)\n",
          len, avail);
}
