
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LHCALL_TS ;
 int X86_CR0_TS ;
 int current_cr0 ;
 int lazy_hcall1 (int ,int ) ;

__attribute__((used)) static void lguest_clts(void)
{
 lazy_hcall1(LHCALL_TS, 0);
 current_cr0 &= ~X86_CR0_TS;
}
