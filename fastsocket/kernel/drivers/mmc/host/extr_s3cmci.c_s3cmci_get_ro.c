
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3cmci_host {struct s3c24xx_mci_pdata* pdata; } ;
struct s3c24xx_mci_pdata {scalar_t__ wprotect_invert; int gpio_wprotect; scalar_t__ no_wprotect; } ;
struct mmc_host {int dummy; } ;


 struct s3cmci_host* mmc_priv (struct mmc_host*) ;
 int s3c2410_gpio_getpin (int ) ;

__attribute__((used)) static int s3cmci_get_ro(struct mmc_host *mmc)
{
 struct s3cmci_host *host = mmc_priv(mmc);
 struct s3c24xx_mci_pdata *pdata = host->pdata;
 int ret;

 if (pdata->no_wprotect)
  return 0;

 ret = s3c2410_gpio_getpin(pdata->gpio_wprotect);

 if (pdata->wprotect_invert)
  ret = !ret;

 return ret;
}
