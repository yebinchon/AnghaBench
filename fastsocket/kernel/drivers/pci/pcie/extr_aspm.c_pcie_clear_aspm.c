
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aspm_clear_state ;
 int aspm_force ;

void pcie_clear_aspm(void)
{
 if (!aspm_force)
  aspm_clear_state = 1;
}
