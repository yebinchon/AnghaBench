
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multicall_space {int mc; } ;


 int MULTI_fpu_taskswitch (int ,int) ;
 int PARAVIRT_LAZY_CPU ;
 unsigned long X86_CR0_TS ;
 int percpu_write (int ,unsigned long) ;
 int xen_cr0_value ;
 struct multicall_space xen_mc_entry (int ) ;
 int xen_mc_issue (int ) ;

__attribute__((used)) static void xen_write_cr0(unsigned long cr0)
{
 struct multicall_space mcs;

 percpu_write(xen_cr0_value, cr0);



 mcs = xen_mc_entry(0);

 MULTI_fpu_taskswitch(mcs.mc, (cr0 & X86_CR0_TS) != 0);

 xen_mc_issue(PARAVIRT_LAZY_CPU);
}
