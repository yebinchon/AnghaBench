
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_of_host {int clock; } ;
struct sdhci_host {int dummy; } ;


 struct sdhci_of_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static unsigned int esdhc_get_min_clock(struct sdhci_host *host)
{
 struct sdhci_of_host *of_host = sdhci_priv(host);

 return of_host->clock / 256 / 16;
}
