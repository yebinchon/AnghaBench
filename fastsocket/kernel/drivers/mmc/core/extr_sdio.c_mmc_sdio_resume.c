
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* driver; } ;
struct sdio_func {TYPE_2__ dev; } ;
struct mmc_host {TYPE_3__* card; int ocr; } ;
struct dev_pm_ops {int (* resume ) (TYPE_2__*) ;} ;
struct TYPE_6__ {int sdio_funcs; struct sdio_func** sdio_func; } ;
struct TYPE_4__ {struct dev_pm_ops* pm; } ;


 int BUG_ON (int) ;
 int mmc_claim_host (struct mmc_host*) ;
 int mmc_release_host (struct mmc_host*) ;
 int mmc_sdio_init_card (struct mmc_host*,int ,TYPE_3__*) ;
 scalar_t__ sdio_func_present (struct sdio_func*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int mmc_sdio_resume(struct mmc_host *host)
{
 int i, err;

 BUG_ON(!host);
 BUG_ON(!host->card);


 mmc_claim_host(host);
 err = mmc_sdio_init_card(host, host->ocr, host->card);
 mmc_release_host(host);
 for (i = 0; !err && i < host->card->sdio_funcs; i++) {
  struct sdio_func *func = host->card->sdio_func[i];
  if (func && sdio_func_present(func) && func->dev.driver) {
   const struct dev_pm_ops *pmops = func->dev.driver->pm;
   err = pmops->resume(&func->dev);
  }
 }

 return err;
}
