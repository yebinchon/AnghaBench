
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* driver; } ;
struct sdio_func {TYPE_3__ dev; } ;
struct mmc_host {TYPE_1__* card; } ;
struct dev_pm_ops {int (* suspend ) (TYPE_3__*) ;int (* resume ) (TYPE_3__*) ;} ;
struct TYPE_6__ {struct dev_pm_ops* pm; } ;
struct TYPE_5__ {int sdio_funcs; struct sdio_func** sdio_func; } ;


 int ENOSYS ;
 scalar_t__ sdio_func_present (struct sdio_func*) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;

__attribute__((used)) static int mmc_sdio_suspend(struct mmc_host *host)
{
 int i, err = 0;

 for (i = 0; i < host->card->sdio_funcs; i++) {
  struct sdio_func *func = host->card->sdio_func[i];
  if (func && sdio_func_present(func) && func->dev.driver) {
   const struct dev_pm_ops *pmops = func->dev.driver->pm;
   if (!pmops || !pmops->suspend || !pmops->resume) {

    err = -ENOSYS;
   } else
    err = pmops->suspend(&func->dev);
   if (err)
    break;
  }
 }
 while (err && --i >= 0) {
  struct sdio_func *func = host->card->sdio_func[i];
  if (func && sdio_func_present(func) && func->dev.driver) {
   const struct dev_pm_ops *pmops = func->dev.driver->pm;
   pmops->resume(&func->dev);
  }
 }

 return err;
}
