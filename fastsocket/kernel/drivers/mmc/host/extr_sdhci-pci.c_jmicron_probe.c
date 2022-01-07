
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_pci_chip {int quirks; TYPE_1__* pdev; } ;
struct pci_dev {scalar_t__ bus; int devfn; } ;
struct TYPE_2__ {scalar_t__ revision; scalar_t__ device; scalar_t__ bus; int dev; int devfn; } ;


 int ENODEV ;
 int PCI_DEVICE_ID_JMICRON_JMB38X_MMC ;
 scalar_t__ PCI_DEVICE_ID_JMICRON_JMB38X_SD ;
 scalar_t__ PCI_SLOT (int ) ;
 int PCI_VENDOR_ID_JMICRON ;
 int SDHCI_QUIRK_32BIT_ADMA_SIZE ;
 int SDHCI_QUIRK_32BIT_DMA_ADDR ;
 int SDHCI_QUIRK_32BIT_DMA_SIZE ;
 int SDHCI_QUIRK_BROKEN_SMALL_PIO ;
 int SDHCI_QUIRK_RESET_AFTER_REQUEST ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int jmicron_pmos (struct sdhci_pci_chip*,int) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_device (int ,int ,struct pci_dev*) ;

__attribute__((used)) static int jmicron_probe(struct sdhci_pci_chip *chip)
{
 int ret;

 if (chip->pdev->revision == 0) {
  chip->quirks |= SDHCI_QUIRK_32BIT_DMA_ADDR |
     SDHCI_QUIRK_32BIT_DMA_SIZE |
     SDHCI_QUIRK_32BIT_ADMA_SIZE |
     SDHCI_QUIRK_RESET_AFTER_REQUEST |
     SDHCI_QUIRK_BROKEN_SMALL_PIO;
 }
 if (chip->pdev->device == PCI_DEVICE_ID_JMICRON_JMB38X_SD) {
  struct pci_dev *sd_dev;

  sd_dev = ((void*)0);
  while ((sd_dev = pci_get_device(PCI_VENDOR_ID_JMICRON,
   PCI_DEVICE_ID_JMICRON_JMB38X_MMC, sd_dev)) != ((void*)0)) {
   if ((PCI_SLOT(chip->pdev->devfn) ==
    PCI_SLOT(sd_dev->devfn)) &&
    (chip->pdev->bus == sd_dev->bus))
    break;
  }

  if (sd_dev) {
   pci_dev_put(sd_dev);
   dev_info(&chip->pdev->dev, "Refusing to bind to "
    "secondary interface.\n");
   return -ENODEV;
  }
 }





 ret = jmicron_pmos(chip, 1);
 if (ret) {
  dev_err(&chip->pdev->dev, "Failure enabling card power\n");
  return ret;
 }

 return 0;
}
