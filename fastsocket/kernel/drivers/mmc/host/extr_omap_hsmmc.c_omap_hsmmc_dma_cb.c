
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct omap_hsmmc_host {int dma_ch; scalar_t__ dma_sg_idx; scalar_t__ dma_len; int sem; TYPE_1__* data; int mmc; } ;
struct TYPE_2__ {scalar_t__ sg; } ;


 int OMAP2_DMA_MISALIGNED_ERR_IRQ ;
 int dev_dbg (int ,char*) ;
 int mmc_dev (int ) ;
 int omap_free_dma (int) ;
 int omap_hsmmc_config_dma_params (struct omap_hsmmc_host*,TYPE_1__*,scalar_t__) ;
 int up (int *) ;

__attribute__((used)) static void omap_hsmmc_dma_cb(int lch, u16 ch_status, void *data)
{
 struct omap_hsmmc_host *host = data;

 if (ch_status & OMAP2_DMA_MISALIGNED_ERR_IRQ)
  dev_dbg(mmc_dev(host->mmc), "MISALIGNED_ADRS_ERR\n");

 if (host->dma_ch < 0)
  return;

 host->dma_sg_idx++;
 if (host->dma_sg_idx < host->dma_len) {

  omap_hsmmc_config_dma_params(host, host->data,
        host->data->sg + host->dma_sg_idx);
  return;
 }

 omap_free_dma(host->dma_ch);
 host->dma_ch = -1;




 up(&host->sem);
}
