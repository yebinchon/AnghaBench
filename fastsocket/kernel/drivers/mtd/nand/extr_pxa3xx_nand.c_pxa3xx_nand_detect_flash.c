
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct pxa3xx_nand_platform_data {int num_flash; struct pxa3xx_nand_flash* flash; scalar_t__ keep_config; } ;
struct pxa3xx_nand_info {TYPE_1__* pdev; } ;
struct pxa3xx_nand_flash {scalar_t__ chip_id; } ;
struct TYPE_2__ {int dev; } ;


 int ARRAY_SIZE (struct pxa3xx_nand_flash**) ;
 int ENODEV ;
 scalar_t__ __readid (struct pxa3xx_nand_info*,scalar_t__*) ;
 struct pxa3xx_nand_flash** builtin_flash_types ;
 int dev_warn (int *,char*,scalar_t__) ;
 scalar_t__ pxa3xx_nand_config_flash (struct pxa3xx_nand_info*,struct pxa3xx_nand_flash const*) ;
 scalar_t__ pxa3xx_nand_detect_config (struct pxa3xx_nand_info*) ;

__attribute__((used)) static int pxa3xx_nand_detect_flash(struct pxa3xx_nand_info *info,
        const struct pxa3xx_nand_platform_data *pdata)
{
 const struct pxa3xx_nand_flash *f;
 uint32_t id = -1;
 int i;

 if (pdata->keep_config)
  if (pxa3xx_nand_detect_config(info) == 0)
   return 0;

 for (i = 0; i<pdata->num_flash; ++i) {
  f = pdata->flash + i;

  if (pxa3xx_nand_config_flash(info, f))
   continue;

  if (__readid(info, &id))
   continue;

  if (id == f->chip_id)
   return 0;
 }
 dev_warn(&info->pdev->dev,
   "failed to detect configured nand flash; found %04x instead of\n",
   id);
 return -ENODEV;
}
