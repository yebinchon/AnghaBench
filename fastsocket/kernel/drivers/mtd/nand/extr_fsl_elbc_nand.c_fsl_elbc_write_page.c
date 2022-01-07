
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_chip {int const* oob_poi; struct fsl_elbc_mtd* priv; } ;
struct mtd_info {int oobsize; int writesize; } ;
struct fsl_elbc_mtd {struct fsl_elbc_ctrl* ctrl; } ;
struct fsl_elbc_ctrl {int const* oob_poi; } ;


 int fsl_elbc_write_buf (struct mtd_info*,int const*,int ) ;

__attribute__((used)) static void fsl_elbc_write_page(struct mtd_info *mtd,
                                struct nand_chip *chip,
                                const uint8_t *buf)
{
 struct fsl_elbc_mtd *priv = chip->priv;
 struct fsl_elbc_ctrl *ctrl = priv->ctrl;

 fsl_elbc_write_buf(mtd, buf, mtd->writesize);
 fsl_elbc_write_buf(mtd, chip->oob_poi, mtd->oobsize);

 ctrl->oob_poi = chip->oob_poi;
}
