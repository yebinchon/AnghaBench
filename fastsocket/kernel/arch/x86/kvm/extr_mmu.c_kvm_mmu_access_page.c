
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int* last_pte_updated; scalar_t__ last_pte_gfn; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef scalar_t__ gfn_t ;


 int PT_ACCESSED_SHIFT ;
 scalar_t__ is_shadow_present_pte (int) ;
 int set_bit (int ,unsigned long*) ;
 int shadow_accessed_mask ;

__attribute__((used)) static void kvm_mmu_access_page(struct kvm_vcpu *vcpu, gfn_t gfn)
{
 u64 *spte = vcpu->arch.last_pte_updated;

 if (spte
     && vcpu->arch.last_pte_gfn == gfn
     && shadow_accessed_mask
     && !(*spte & shadow_accessed_mask)
     && is_shadow_present_pte(*spte))
  set_bit(PT_ACCESSED_SHIFT, (unsigned long *)spte);
}
