
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HYPERVISOR_get_debugreg (int) ;

__attribute__((used)) static unsigned long xen_get_debugreg(int reg)
{
 return HYPERVISOR_get_debugreg(reg);
}
