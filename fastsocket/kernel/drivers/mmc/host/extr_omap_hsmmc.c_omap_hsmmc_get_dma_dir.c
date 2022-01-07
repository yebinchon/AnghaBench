
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_host {int dummy; } ;
struct mmc_data {int flags; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int MMC_DATA_WRITE ;

__attribute__((used)) static int
omap_hsmmc_get_dma_dir(struct omap_hsmmc_host *host, struct mmc_data *data)
{
 if (data->flags & MMC_DATA_WRITE)
  return DMA_TO_DEVICE;
 else
  return DMA_FROM_DEVICE;
}
