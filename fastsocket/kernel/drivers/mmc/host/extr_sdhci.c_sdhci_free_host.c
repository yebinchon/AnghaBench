
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int mmc; } ;


 int mmc_free_host (int ) ;

void sdhci_free_host(struct sdhci_host *host)
{
 mmc_free_host(host->mmc);
}
