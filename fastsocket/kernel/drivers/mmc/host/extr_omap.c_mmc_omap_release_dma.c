
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_omap_host {scalar_t__ dma_ch; int sg_len; int mmc; int dma_timer; } ;
struct mmc_data {int flags; int sg; scalar_t__ error; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int BUG_ON (int) ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 scalar_t__ HZ ;
 int MMC_DATA_WRITE ;
 int dma_unmap_sg (int ,int ,int ,int) ;
 scalar_t__ jiffies ;
 int mmc_dev (int ) ;
 int mod_timer (int *,scalar_t__) ;
 int omap_stop_dma (scalar_t__) ;

__attribute__((used)) static void
mmc_omap_release_dma(struct mmc_omap_host *host, struct mmc_data *data,
       int abort)
{
 enum dma_data_direction dma_data_dir;

 BUG_ON(host->dma_ch < 0);
 if (data->error)
  omap_stop_dma(host->dma_ch);

 mod_timer(&host->dma_timer, jiffies + HZ);
 if (data->flags & MMC_DATA_WRITE)
  dma_data_dir = DMA_TO_DEVICE;
 else
  dma_data_dir = DMA_FROM_DEVICE;
 dma_unmap_sg(mmc_dev(host->mmc), data->sg, host->sg_len,
       dma_data_dir);
}
