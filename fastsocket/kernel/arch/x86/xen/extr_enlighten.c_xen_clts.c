
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multicall_space {int mc; } ;


 int MULTI_fpu_taskswitch (int ,int ) ;
 int PARAVIRT_LAZY_CPU ;
 struct multicall_space xen_mc_entry (int ) ;
 int xen_mc_issue (int ) ;

__attribute__((used)) static void xen_clts(void)
{
 struct multicall_space mcs;

 mcs = xen_mc_entry(0);

 MULTI_fpu_taskswitch(mcs.mc, 0);

 xen_mc_issue(PARAVIRT_LAZY_CPU);
}
