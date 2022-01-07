
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct controller {int dummy; } ;


 int PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_DLLLA ;
 scalar_t__ pciehp_readw (struct controller*,int ,int*) ;

__attribute__((used)) static inline int check_link_active(struct controller *ctrl)
{
 u16 link_status;

 if (pciehp_readw(ctrl, PCI_EXP_LNKSTA, &link_status))
  return 0;
 return !!(link_status & PCI_EXP_LNKSTA_DLLLA);
}
