
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc8xxx_spi_probe_info {int * alow_flags; int * gpios; } ;
struct fsl_spi_platform_data {int max_chipselect; } ;
struct device {struct fsl_spi_platform_data* platform_data; } ;


 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 int kfree (int *) ;
 struct mpc8xxx_spi_probe_info* to_of_pinfo (struct fsl_spi_platform_data*) ;

__attribute__((used)) static int of_mpc8xxx_spi_free_chipselects(struct device *dev)
{
 struct fsl_spi_platform_data *pdata = dev->platform_data;
 struct mpc8xxx_spi_probe_info *pinfo = to_of_pinfo(pdata);
 int i;

 if (!pinfo->gpios)
  return 0;

 for (i = 0; i < pdata->max_chipselect; i++) {
  if (gpio_is_valid(pinfo->gpios[i]))
   gpio_free(pinfo->gpios[i]);
 }

 kfree(pinfo->gpios);
 kfree(pinfo->alow_flags);
 return 0;
}
