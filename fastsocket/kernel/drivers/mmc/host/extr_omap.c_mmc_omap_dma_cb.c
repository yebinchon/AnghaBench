
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mmc_omap_host {scalar_t__ dma_ch; scalar_t__ sg_idx; scalar_t__ sg_len; struct mmc_data* data; scalar_t__ dma_len; int mmc; } ;
struct mmc_data {int bytes_xfered; } ;


 int OMAP1_DMA_TOUT_IRQ ;
 int OMAP_DMA_BLOCK_IRQ ;
 int OMAP_DMA_DROP_IRQ ;
 int dev_err (int ,char*) ;
 int mmc_dev (int ) ;
 int mmc_omap_dma_done (struct mmc_omap_host*,struct mmc_data*) ;
 int mmc_omap_prepare_dma (struct mmc_omap_host*,struct mmc_data*) ;
 int omap_start_dma (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void mmc_omap_dma_cb(int lch, u16 ch_status, void *data)
{
 struct mmc_omap_host *host = (struct mmc_omap_host *) data;
 struct mmc_data *mmcdat = host->data;

 if (unlikely(host->dma_ch < 0)) {
  dev_err(mmc_dev(host->mmc),
   "DMA callback while DMA not enabled\n");
  return;
 }

 if (ch_status & OMAP1_DMA_TOUT_IRQ) {
  dev_err(mmc_dev(host->mmc),"DMA timeout\n");
  return;
 }
 if (ch_status & OMAP_DMA_DROP_IRQ) {
  dev_err(mmc_dev(host->mmc), "DMA sync error\n");
  return;
 }
 if (!(ch_status & OMAP_DMA_BLOCK_IRQ)) {
  return;
 }
 mmcdat->bytes_xfered += host->dma_len;
 host->sg_idx++;
 if (host->sg_idx < host->sg_len) {
  mmc_omap_prepare_dma(host, host->data);
  omap_start_dma(host->dma_ch);
 } else
  mmc_omap_dma_done(host, host->data);
}
