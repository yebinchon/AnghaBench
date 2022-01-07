
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int * msr_reg ;
 int * pci_reg ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 scalar_t__ unlikely (int ) ;
 int use_msr ;
 int wrmsr (int ,int,int ) ;

__attribute__((used)) static inline int cs5536_write(struct pci_dev *pdev, int reg, int val)
{
 if (unlikely(use_msr)) {
  wrmsr(msr_reg[reg], val, 0);
  return 0;
 }

 return pci_write_config_dword(pdev, pci_reg[reg], val);
}
