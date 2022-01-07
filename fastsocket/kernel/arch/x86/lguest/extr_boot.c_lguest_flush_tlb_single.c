
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pgdir; } ;


 int LHCALL_SET_PTE ;
 int lazy_hcall3 (int ,int ,unsigned long,int ) ;
 TYPE_1__ lguest_data ;

__attribute__((used)) static void lguest_flush_tlb_single(unsigned long addr)
{

 lazy_hcall3(LHCALL_SET_PTE, lguest_data.pgdir, addr, 0);
}
