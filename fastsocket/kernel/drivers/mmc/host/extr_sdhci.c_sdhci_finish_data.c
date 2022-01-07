
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int flags; int finish_tasklet; int mmc; struct mmc_data* data; } ;
struct mmc_data {int flags; int bytes_xfered; int blksz; int blocks; scalar_t__ stop; scalar_t__ error; int sg_len; int sg; } ;


 int BUG_ON (int) ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int MMC_DATA_READ ;
 int SDHCI_REQ_USE_DMA ;
 int SDHCI_RESET_CMD ;
 int SDHCI_RESET_DATA ;
 int SDHCI_USE_ADMA ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_dev (int ) ;
 int sdhci_adma_table_post (struct sdhci_host*,struct mmc_data*) ;
 int sdhci_reset (struct sdhci_host*,int ) ;
 int sdhci_send_command (struct sdhci_host*,scalar_t__) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void sdhci_finish_data(struct sdhci_host *host)
{
 struct mmc_data *data;

 BUG_ON(!host->data);

 data = host->data;
 host->data = ((void*)0);

 if (host->flags & SDHCI_REQ_USE_DMA) {
  if (host->flags & SDHCI_USE_ADMA)
   sdhci_adma_table_post(host, data);
  else {
   dma_unmap_sg(mmc_dev(host->mmc), data->sg,
    data->sg_len, (data->flags & MMC_DATA_READ) ?
     DMA_FROM_DEVICE : DMA_TO_DEVICE);
  }
 }
 if (data->error)
  data->bytes_xfered = 0;
 else
  data->bytes_xfered = data->blksz * data->blocks;

 if (data->stop) {




  if (data->error) {
   sdhci_reset(host, SDHCI_RESET_CMD);
   sdhci_reset(host, SDHCI_RESET_DATA);
  }

  sdhci_send_command(host, data->stop);
 } else
  tasklet_schedule(&host->finish_tasklet);
}
