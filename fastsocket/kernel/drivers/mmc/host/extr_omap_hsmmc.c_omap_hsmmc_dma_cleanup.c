
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hsmmc_host {int dma_ch; TYPE_1__* data; int sem; int dma_len; int mmc; scalar_t__ use_dma; } ;
struct TYPE_2__ {int error; int sg; } ;


 int dma_unmap_sg (int ,int ,int ,int ) ;
 int mmc_dev (int ) ;
 int omap_free_dma (int) ;
 int omap_hsmmc_get_dma_dir (struct omap_hsmmc_host*,TYPE_1__*) ;
 int up (int *) ;

__attribute__((used)) static void omap_hsmmc_dma_cleanup(struct omap_hsmmc_host *host, int errno)
{
 host->data->error = errno;

 if (host->use_dma && host->dma_ch != -1) {
  dma_unmap_sg(mmc_dev(host->mmc), host->data->sg, host->dma_len,
   omap_hsmmc_get_dma_dir(host, host->data));
  omap_free_dma(host->dma_ch);
  host->dma_ch = -1;
  up(&host->sem);
 }
 host->data = ((void*)0);
}
