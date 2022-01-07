
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_spi_host {TYPE_1__* pdata; } ;
struct mmc_host {int parent; } ;
struct TYPE_2__ {int (* get_cd ) (int ) ;} ;


 int ENOSYS ;
 struct mmc_spi_host* mmc_priv (struct mmc_host*) ;
 int stub1 (int ) ;

__attribute__((used)) static int mmc_spi_get_cd(struct mmc_host *mmc)
{
 struct mmc_spi_host *host = mmc_priv(mmc);

 if (host->pdata && host->pdata->get_cd)
  return !!host->pdata->get_cd(mmc->parent);
 return -ENOSYS;
}
