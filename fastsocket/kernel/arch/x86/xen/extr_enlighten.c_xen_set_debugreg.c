
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HYPERVISOR_set_debugreg (int,unsigned long) ;

__attribute__((used)) static void xen_set_debugreg(int reg, unsigned long val)
{
 HYPERVISOR_set_debugreg(reg, val);
}
