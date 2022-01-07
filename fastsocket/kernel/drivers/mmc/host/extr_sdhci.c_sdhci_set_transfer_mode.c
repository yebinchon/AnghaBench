
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {int flags; int data; } ;
struct mmc_data {int blocks; int flags; } ;


 int MMC_DATA_READ ;
 int SDHCI_REQ_USE_DMA ;
 int SDHCI_TRANSFER_MODE ;
 int SDHCI_TRNS_BLK_CNT_EN ;
 int SDHCI_TRNS_DMA ;
 int SDHCI_TRNS_MULTI ;
 int SDHCI_TRNS_READ ;
 int WARN_ON (int) ;
 int sdhci_writew (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_set_transfer_mode(struct sdhci_host *host,
 struct mmc_data *data)
{
 u16 mode;

 if (data == ((void*)0))
  return;

 WARN_ON(!host->data);

 mode = SDHCI_TRNS_BLK_CNT_EN;
 if (data->blocks > 1)
  mode |= SDHCI_TRNS_MULTI;
 if (data->flags & MMC_DATA_READ)
  mode |= SDHCI_TRNS_READ;
 if (host->flags & SDHCI_REQ_USE_DMA)
  mode |= SDHCI_TRNS_DMA;

 sdhci_writew(host, mode, SDHCI_TRANSFER_MODE);
}
