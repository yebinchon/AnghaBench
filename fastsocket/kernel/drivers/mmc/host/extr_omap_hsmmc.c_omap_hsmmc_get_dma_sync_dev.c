
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_host {int dma_line_tx; int dma_line_rx; } ;
struct mmc_data {int flags; } ;


 int MMC_DATA_WRITE ;

__attribute__((used)) static int omap_hsmmc_get_dma_sync_dev(struct omap_hsmmc_host *host,
         struct mmc_data *data)
{
 int sync_dev;

 if (data->flags & MMC_DATA_WRITE)
  sync_dev = host->dma_line_tx;
 else
  sync_dev = host->dma_line_rx;
 return sync_dev;
}
