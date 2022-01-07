
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_omap_host {int dma_ch; } ;


 int BUG_ON (int) ;
 int omap_free_dma (int) ;

__attribute__((used)) static void
mmc_omap_dma_timer(unsigned long data)
{
 struct mmc_omap_host *host = (struct mmc_omap_host *) data;

 BUG_ON(host->dma_ch < 0);
 omap_free_dma(host->dma_ch);
 host->dma_ch = -1;
}
