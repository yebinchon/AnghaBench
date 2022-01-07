
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct radeon_device {int pdev; } ;


 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_READRQ ;
 int pcie_capability_read_word (int ,int ,int*) ;
 int pcie_capability_write_word (int ,int ,int) ;

void evergreen_fix_pci_max_read_req_size(struct radeon_device *rdev)
{
 u16 ctl, v;
 int err;

 err = pcie_capability_read_word(rdev->pdev, PCI_EXP_DEVCTL, &ctl);
 if (err)
  return;

 v = (ctl & PCI_EXP_DEVCTL_READRQ) >> 12;




 if ((v == 0) || (v == 6) || (v == 7)) {
  ctl &= ~PCI_EXP_DEVCTL_READRQ;
  ctl |= (2 << 12);
  pcie_capability_write_word(rdev->pdev, PCI_EXP_DEVCTL, ctl);
 }
}
