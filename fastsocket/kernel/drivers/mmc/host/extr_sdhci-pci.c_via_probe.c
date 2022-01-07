
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_pci_chip {int quirks; TYPE_1__* pdev; } ;
struct TYPE_2__ {int revision; } ;


 int SDHCI_QUIRK_DELAY_AFTER_POWER ;

__attribute__((used)) static int via_probe(struct sdhci_pci_chip *chip)
{
 if (chip->pdev->revision == 0x10)
  chip->quirks |= SDHCI_QUIRK_DELAY_AFTER_POWER;

 return 0;
}
