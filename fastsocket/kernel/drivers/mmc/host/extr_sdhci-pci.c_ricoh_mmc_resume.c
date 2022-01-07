
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pci_chip {int dummy; } ;


 int msleep (int) ;

__attribute__((used)) static int ricoh_mmc_resume(struct sdhci_pci_chip *chip)
{



 msleep(500);
 return 0;
}
