
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct sdhci_pci_slot {TYPE_3__* host; TYPE_2__* chip; } ;
struct TYPE_6__ {int quirks; scalar_t__ ioaddr; } ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {scalar_t__ revision; scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_JMICRON_JMB38X_MMC ;
 scalar_t__ SDHCI_HOST_VERSION ;
 int SDHCI_QUIRK_BROKEN_ADMA ;
 int SDHCI_VENDOR_VER_MASK ;
 int SDHCI_VENDOR_VER_SHIFT ;
 int jmicron_enable_mmc (TYPE_3__*,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int jmicron_probe_slot(struct sdhci_pci_slot *slot)
{
 if (slot->chip->pdev->revision == 0) {
  u16 version;

  version = readl(slot->host->ioaddr + SDHCI_HOST_VERSION);
  version = (version & SDHCI_VENDOR_VER_MASK) >>
   SDHCI_VENDOR_VER_SHIFT;






  if (version < 0xAC)
   slot->host->quirks |= SDHCI_QUIRK_BROKEN_ADMA;
 }





 if (slot->chip->pdev->device == PCI_DEVICE_ID_JMICRON_JMB38X_MMC)
  jmicron_enable_mmc(slot->host, 1);

 return 0;
}
