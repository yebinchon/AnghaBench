
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct controller {int dummy; } ;


 int PCI_EXP_SLTSTA ;
 int PCI_EXP_SLTSTA_CC ;
 int msleep (int) ;
 int pciehp_readw (struct controller*,int ,int*) ;
 int pciehp_writew (struct controller*,int ,int) ;

__attribute__((used)) static int pcie_poll_cmd(struct controller *ctrl)
{
 u16 slot_status;
 int err, timeout = 1000;

 err = pciehp_readw(ctrl, PCI_EXP_SLTSTA, &slot_status);
 if (!err && (slot_status & PCI_EXP_SLTSTA_CC)) {
  pciehp_writew(ctrl, PCI_EXP_SLTSTA, PCI_EXP_SLTSTA_CC);
  return 1;
 }
 while (timeout > 0) {
  msleep(10);
  timeout -= 10;
  err = pciehp_readw(ctrl, PCI_EXP_SLTSTA, &slot_status);
  if (!err && (slot_status & PCI_EXP_SLTSTA_CC)) {
   pciehp_writew(ctrl, PCI_EXP_SLTSTA, PCI_EXP_SLTSTA_CC);
   return 1;
  }
 }
 return 0;
}
