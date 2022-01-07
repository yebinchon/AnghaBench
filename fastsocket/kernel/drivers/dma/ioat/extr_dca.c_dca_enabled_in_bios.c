
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 unsigned long cpuid_eax (int) ;
 int dev_dbg (int *,char*) ;
 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static int dca_enabled_in_bios(struct pci_dev *pdev)
{


 unsigned long cpuid_level_9;
 int res;

 cpuid_level_9 = cpuid_eax(9);
 res = test_bit(0, &cpuid_level_9);
 if (!res)
  dev_dbg(&pdev->dev, "DCA is disabled in BIOS\n");

 return res;
}
