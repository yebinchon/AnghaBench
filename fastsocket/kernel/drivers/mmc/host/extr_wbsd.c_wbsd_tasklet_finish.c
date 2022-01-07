
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbsd_host {int lock; int mrq; } ;
struct mmc_data {int dummy; } ;


 int WARN_ON (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wbsd_finish_data (struct wbsd_host*,struct mmc_data*) ;
 struct mmc_data* wbsd_get_data (struct wbsd_host*) ;

__attribute__((used)) static void wbsd_tasklet_finish(unsigned long param)
{
 struct wbsd_host *host = (struct wbsd_host *)param;
 struct mmc_data *data;

 spin_lock(&host->lock);

 WARN_ON(!host->mrq);
 if (!host->mrq)
  goto end;

 data = wbsd_get_data(host);
 if (!data)
  goto end;

 wbsd_finish_data(host, data);

end:
 spin_unlock(&host->lock);
}
