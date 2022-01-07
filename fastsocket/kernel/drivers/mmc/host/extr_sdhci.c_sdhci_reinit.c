
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;


 int sdhci_enable_card_detection (struct sdhci_host*) ;
 int sdhci_init (struct sdhci_host*) ;

__attribute__((used)) static void sdhci_reinit(struct sdhci_host *host)
{
 sdhci_init(host);
 sdhci_enable_card_detection(host);
}
