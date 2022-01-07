
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {int dev; } ;
struct mmc_host {int dummy; } ;
struct TYPE_2__ {int (* get_ro ) (int ,int ) ;} ;


 int ENOSYS ;
 struct omap_hsmmc_host* mmc_priv (struct mmc_host*) ;
 TYPE_1__ mmc_slot (struct omap_hsmmc_host*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int omap_hsmmc_get_ro(struct mmc_host *mmc)
{
 struct omap_hsmmc_host *host = mmc_priv(mmc);

 if (!mmc_slot(host).get_ro)
  return -ENOSYS;
 return mmc_slot(host).get_ro(host->dev, 0);
}
