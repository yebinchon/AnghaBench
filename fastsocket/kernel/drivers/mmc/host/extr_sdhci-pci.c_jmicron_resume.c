
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdhci_pci_chip {int num_slots; TYPE_2__* pdev; TYPE_1__** slots; } ;
struct TYPE_4__ {scalar_t__ device; int dev; } ;
struct TYPE_3__ {int host; } ;


 scalar_t__ PCI_DEVICE_ID_JMICRON_JMB38X_MMC ;
 int dev_err (int *,char*) ;
 int jmicron_enable_mmc (int ,int) ;
 int jmicron_pmos (struct sdhci_pci_chip*,int) ;

__attribute__((used)) static int jmicron_resume(struct sdhci_pci_chip *chip)
{
 int ret, i;

 if (chip->pdev->device == PCI_DEVICE_ID_JMICRON_JMB38X_MMC) {
  for (i = 0;i < chip->num_slots;i++)
   jmicron_enable_mmc(chip->slots[i]->host, 1);
 }

 ret = jmicron_pmos(chip, 1);
 if (ret) {
  dev_err(&chip->pdev->dev, "Failure enabling card power\n");
  return ret;
 }

 return 0;
}
