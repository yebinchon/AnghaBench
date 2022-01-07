
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct kvm_mmu_page {scalar_t__* spt; } ;


 int PT64_ENT_PER_PAGE ;
 int __set_spte (scalar_t__*,scalar_t__) ;
 scalar_t__ shadow_notrap_nonpresent_pte ;
 scalar_t__ shadow_trap_nonpresent_pte ;

__attribute__((used)) static void mmu_convert_notrap(struct kvm_mmu_page *sp)
{
 int i;
 u64 *pt = sp->spt;

 if (shadow_trap_nonpresent_pte == shadow_notrap_nonpresent_pte)
  return;

 for (i = 0; i < PT64_ENT_PER_PAGE; ++i) {
  if (pt[i] == shadow_notrap_nonpresent_pte)
   __set_spte(&pt[i], shadow_trap_nonpresent_pte);
 }
}
