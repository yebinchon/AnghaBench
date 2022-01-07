
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int * msr_reg ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int * pci_reg ;
 int rdmsr (int ,int ,int ) ;
 scalar_t__ unlikely (int ) ;
 int use_msr ;

__attribute__((used)) static inline int cs5536_read(struct pci_dev *pdev, int reg, u32 *val)
{
 if (unlikely(use_msr)) {
  u32 dummy;

  rdmsr(msr_reg[reg], *val, dummy);
  return 0;
 }

 return pci_read_config_dword(pdev, pci_reg[reg], val);
}
