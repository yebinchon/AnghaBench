
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_crdr_mmc_host {int finish_tasklet; int mmc; struct mmc_data* data; } ;
struct mmc_data {int bytes_xfered; int blocks; int blksz; int flags; scalar_t__ stop; int sg_len; int sg; scalar_t__ error; } ;


 int BUG_ON (int) ;
 int MMC_DATA_READ ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_dev (int ) ;
 int tasklet_schedule (int *) ;
 int via_sdc_send_command (struct via_crdr_mmc_host*,scalar_t__) ;

__attribute__((used)) static void via_sdc_finish_data(struct via_crdr_mmc_host *host)
{
 struct mmc_data *data;

 BUG_ON(!host->data);

 data = host->data;
 host->data = ((void*)0);

 if (data->error)
  data->bytes_xfered = 0;
 else
  data->bytes_xfered = data->blocks * data->blksz;

 dma_unmap_sg(mmc_dev(host->mmc), data->sg, data->sg_len,
  ((data->flags & MMC_DATA_READ) ?
  PCI_DMA_FROMDEVICE : PCI_DMA_TODEVICE));

 if (data->stop)
  via_sdc_send_command(host, data->stop);
 else
  tasklet_schedule(&host->finish_tasklet);
}
