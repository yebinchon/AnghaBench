
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 scalar_t__ MSR_IDE_CFG ;
 scalar_t__ PCI_IDE_CFG ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int *) ;
 int rdmsr (scalar_t__,int ,int ) ;
 scalar_t__ unlikely (int ) ;
 int use_msr ;

__attribute__((used)) static int cs5536_read(struct pci_dev *pdev, int reg, u32 *val)
{
 if (unlikely(use_msr)) {
  u32 dummy;

  rdmsr(MSR_IDE_CFG + reg, *val, dummy);
  return 0;
 }

 return pci_read_config_dword(pdev, PCI_IDE_CFG + reg * 4, val);
}
