
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;


 void* shadow_notrap_nonpresent_pte ;
 void* shadow_trap_nonpresent_pte ;

void kvm_mmu_set_nonpresent_ptes(u64 trap_pte, u64 notrap_pte)
{
 shadow_trap_nonpresent_pte = trap_pte;
 shadow_notrap_nonpresent_pte = notrap_pte;
}
