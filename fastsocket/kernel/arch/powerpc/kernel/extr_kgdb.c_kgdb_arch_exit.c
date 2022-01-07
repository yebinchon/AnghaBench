
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __debugger ;
 int __debugger_bpt ;
 int __debugger_dabr_match ;
 int __debugger_fault_handler ;
 int __debugger_iabr_match ;
 int __debugger_ipi ;
 int __debugger_sstep ;
 int old__debugger ;
 int old__debugger_bpt ;
 int old__debugger_dabr_match ;
 int old__debugger_fault_handler ;
 int old__debugger_iabr_match ;
 int old__debugger_ipi ;
 int old__debugger_sstep ;

void kgdb_arch_exit(void)
{
 __debugger_ipi = old__debugger_ipi;
 __debugger = old__debugger;
 __debugger_bpt = old__debugger_bpt;
 __debugger_sstep = old__debugger_sstep;
 __debugger_iabr_match = old__debugger_iabr_match;
 __debugger_dabr_match = old__debugger_dabr_match;
 __debugger_fault_handler = old__debugger_fault_handler;
}
