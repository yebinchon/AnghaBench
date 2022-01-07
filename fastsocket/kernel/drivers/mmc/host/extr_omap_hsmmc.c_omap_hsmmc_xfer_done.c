
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {int dma_ch; int mmc; struct mmc_request* mrq; int dma_len; scalar_t__ use_dma; int * data; scalar_t__ response_busy; TYPE_1__* cmd; } ;
struct mmc_request {int dummy; } ;
struct mmc_data {int blocks; int blksz; int stop; struct mmc_request* mrq; scalar_t__ bytes_xfered; int error; int sg; } ;
struct TYPE_2__ {int opcode; } ;


 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_dev (int ) ;
 int mmc_request_done (int ,struct mmc_request*) ;
 int omap_hsmmc_get_dma_dir (struct omap_hsmmc_host*,struct mmc_data*) ;
 int omap_hsmmc_start_command (struct omap_hsmmc_host*,int ,int *) ;

__attribute__((used)) static void
omap_hsmmc_xfer_done(struct omap_hsmmc_host *host, struct mmc_data *data)
{
 if (!data) {
  struct mmc_request *mrq = host->mrq;


  if (host->cmd && host->cmd->opcode == 6 &&
      host->response_busy) {
   host->response_busy = 0;
   return;
  }

  host->mrq = ((void*)0);
  mmc_request_done(host->mmc, mrq);
  return;
 }

 host->data = ((void*)0);

 if (host->use_dma && host->dma_ch != -1)
  dma_unmap_sg(mmc_dev(host->mmc), data->sg, host->dma_len,
   omap_hsmmc_get_dma_dir(host, data));

 if (!data->error)
  data->bytes_xfered += data->blocks * (data->blksz);
 else
  data->bytes_xfered = 0;

 if (!data->stop) {
  host->mrq = ((void*)0);
  mmc_request_done(host->mmc, data->mrq);
  return;
 }
 omap_hsmmc_start_command(host, data->stop, ((void*)0));
}
