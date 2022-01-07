
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int shadow_base_present_pte ;

void kvm_mmu_set_base_ptes(u64 base_pte)
{
 shadow_base_present_pte = base_pte;
}
