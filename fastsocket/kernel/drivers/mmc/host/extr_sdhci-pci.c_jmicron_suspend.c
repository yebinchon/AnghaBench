
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdhci_pci_chip {int num_slots; TYPE_2__** slots; TYPE_1__* pdev; } ;
typedef int pm_message_t ;
struct TYPE_4__ {int host; } ;
struct TYPE_3__ {scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_JMICRON_JMB38X_MMC ;
 int jmicron_enable_mmc (int ,int ) ;

__attribute__((used)) static int jmicron_suspend(struct sdhci_pci_chip *chip, pm_message_t state)
{
 int i;

 if (chip->pdev->device == PCI_DEVICE_ID_JMICRON_JMB38X_MMC) {
  for (i = 0;i < chip->num_slots;i++)
   jmicron_enable_mmc(chip->slots[i]->host, 0);
 }

 return 0;
}
