
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int quirks; } ;


 int SDHCI_INT_CARD_INSERT ;
 int SDHCI_INT_CARD_REMOVE ;
 int SDHCI_QUIRK_BROKEN_CARD_DETECTION ;
 int sdhci_mask_irqs (struct sdhci_host*,int) ;
 int sdhci_unmask_irqs (struct sdhci_host*,int) ;

__attribute__((used)) static void sdhci_set_card_detection(struct sdhci_host *host, bool enable)
{
 u32 irqs = SDHCI_INT_CARD_REMOVE | SDHCI_INT_CARD_INSERT;

 if (host->quirks & SDHCI_QUIRK_BROKEN_CARD_DETECTION)
  return;

 if (enable)
  sdhci_unmask_irqs(host, irqs);
 else
  sdhci_mask_irqs(host, irqs);
}
