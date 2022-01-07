
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int (* set_power ) (int) ;} ;
struct sdio_func {int dev; } ;


 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_disable_func (struct sdio_func*) ;
 int sdio_enable_func (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int stub1 (int) ;
 int stub2 (int) ;
 struct sdio_func* wl_to_func (struct wl1251*) ;

__attribute__((used)) static int wl1251_sdio_set_power(struct wl1251 *wl, bool enable)
{
 struct sdio_func *func = wl_to_func(wl);
 int ret;

 if (enable) {





  if (wl->set_power)
   wl->set_power(1);

  ret = pm_runtime_get_sync(&func->dev);
  if (ret < 0) {
   pm_runtime_put_sync(&func->dev);
   goto out;
  }

  sdio_claim_host(func);
  sdio_enable_func(func);
  sdio_release_host(func);
 } else {
  sdio_claim_host(func);
  sdio_disable_func(func);
  sdio_release_host(func);

  ret = pm_runtime_put_sync(&func->dev);
  if (ret < 0)
   goto out;

  if (wl->set_power)
   wl->set_power(0);
 }

out:
 return ret;
}
