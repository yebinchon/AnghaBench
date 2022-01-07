
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LHCALL_TS ;
 unsigned long X86_CR0_TS ;
 unsigned long current_cr0 ;
 int lazy_hcall1 (int ,unsigned long) ;

__attribute__((used)) static void lguest_write_cr0(unsigned long val)
{
 lazy_hcall1(LHCALL_TS, val & X86_CR0_TS);
 current_cr0 = val;
}
