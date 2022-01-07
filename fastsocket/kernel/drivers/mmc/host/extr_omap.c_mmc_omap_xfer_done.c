
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_omap_host {int send_stop_work; struct mmc_data* stop_data; int current_slot; struct mmc_host* mmc; int * mrq; scalar_t__ sg_len; int * data; scalar_t__ dma_in_use; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int mrq; int stop; int error; } ;


 int mmc_omap_release_dma (struct mmc_omap_host*,struct mmc_data*,int ) ;
 int mmc_omap_release_slot (int ,int) ;
 int mmc_request_done (struct mmc_host*,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static void
mmc_omap_xfer_done(struct mmc_omap_host *host, struct mmc_data *data)
{
 if (host->dma_in_use)
  mmc_omap_release_dma(host, data, data->error);

 host->data = ((void*)0);
 host->sg_len = 0;






 if (!data->stop) {
  struct mmc_host *mmc;

  host->mrq = ((void*)0);
  mmc = host->mmc;
  mmc_omap_release_slot(host->current_slot, 1);
  mmc_request_done(mmc, data->mrq);
  return;
 }

 host->stop_data = data;
 schedule_work(&host->send_stop_work);
}
