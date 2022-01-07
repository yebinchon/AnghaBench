
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 scalar_t__ MSR_IDE_CFG ;
 scalar_t__ PCI_IDE_CFG ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;
 scalar_t__ unlikely (int ) ;
 int use_msr ;
 int wrmsr (scalar_t__,int,int ) ;

__attribute__((used)) static int cs5536_write(struct pci_dev *pdev, int reg, int val)
{
 if (unlikely(use_msr)) {
  wrmsr(MSR_IDE_CFG + reg, val, 0);
  return 0;
 }

 return pci_write_config_dword(pdev, PCI_IDE_CFG + reg * 4, val);
}
