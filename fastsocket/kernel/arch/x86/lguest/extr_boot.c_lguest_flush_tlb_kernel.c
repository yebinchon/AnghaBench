
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LHCALL_FLUSH_TLB ;
 int lazy_hcall1 (int ,int) ;

__attribute__((used)) static void lguest_flush_tlb_kernel(void)
{
 lazy_hcall1(LHCALL_FLUSH_TLB, 1);
}
