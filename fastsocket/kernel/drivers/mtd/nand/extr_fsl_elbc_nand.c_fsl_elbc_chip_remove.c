
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct fsl_elbc_mtd* name; } ;
struct fsl_elbc_mtd {size_t bank; scalar_t__ vbase; TYPE_1__ mtd; struct fsl_elbc_ctrl* ctrl; } ;
struct fsl_elbc_ctrl {int ** chips; } ;


 int iounmap (scalar_t__) ;
 int kfree (struct fsl_elbc_mtd*) ;
 int nand_release (TYPE_1__*) ;

__attribute__((used)) static int fsl_elbc_chip_remove(struct fsl_elbc_mtd *priv)
{
 struct fsl_elbc_ctrl *ctrl = priv->ctrl;

 nand_release(&priv->mtd);

 kfree(priv->mtd.name);

 if (priv->vbase)
  iounmap(priv->vbase);

 ctrl->chips[priv->bank] = ((void*)0);
 kfree(priv);

 return 0;
}
