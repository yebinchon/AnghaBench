
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct fsl_upm_nand {size_t mchip_number; int dev; int * rnb_gpio; } ;


 int dev_vdbg (int ,char*) ;
 scalar_t__ gpio_get_value (int ) ;
 struct fsl_upm_nand* to_fsl_upm_nand (struct mtd_info*) ;

__attribute__((used)) static int fun_chip_ready(struct mtd_info *mtd)
{
 struct fsl_upm_nand *fun = to_fsl_upm_nand(mtd);

 if (gpio_get_value(fun->rnb_gpio[fun->mchip_number]))
  return 1;

 dev_vdbg(fun->dev, "busy\n");
 return 0;
}
