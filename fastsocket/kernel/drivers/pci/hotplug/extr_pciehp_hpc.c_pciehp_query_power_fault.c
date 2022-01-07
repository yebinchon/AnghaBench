
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct slot {struct controller* ctrl; } ;
struct controller {int dummy; } ;


 int PCI_EXP_SLTSTA ;
 int PCI_EXP_SLTSTA_PFD ;
 int ctrl_err (struct controller*,char*) ;
 int pciehp_readw (struct controller*,int ,int*) ;

int pciehp_query_power_fault(struct slot *slot)
{
 struct controller *ctrl = slot->ctrl;
 u16 slot_status;
 int retval;

 retval = pciehp_readw(ctrl, PCI_EXP_SLTSTA, &slot_status);
 if (retval) {
  ctrl_err(ctrl, "Cannot check for power fault\n");
  return retval;
 }
 return !!(slot_status & PCI_EXP_SLTSTA_PFD);
}
