
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_host {int dummy; } ;
struct imxmci_host {TYPE_1__* pdata; } ;
struct TYPE_2__ {int (* get_ro ) (int ) ;} ;


 int ENOSYS ;
 int mmc_dev (struct mmc_host*) ;
 struct imxmci_host* mmc_priv (struct mmc_host*) ;
 int stub1 (int ) ;

__attribute__((used)) static int imxmci_get_ro(struct mmc_host *mmc)
{
 struct imxmci_host *host = mmc_priv(mmc);

 if (host->pdata && host->pdata->get_ro)
  return !!host->pdata->get_ro(mmc_dev(mmc));




 return -ENOSYS;
}
