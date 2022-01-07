
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_link_state {int aspm_default; } ;


 int ASPM_STATE_ALL ;



 int aspm_policy ;

__attribute__((used)) static int policy_to_aspm_state(struct pcie_link_state *link)
{
 switch (aspm_policy) {
 case 129:

  return 0;
 case 128:

  return ASPM_STATE_ALL;
 case 130:
  return link->aspm_default;
 }
 return 0;
}
