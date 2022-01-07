
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_mmu_page {int * spt; } ;


 int PT64_ENT_PER_PAGE ;
 int shadow_trap_nonpresent_pte ;

__attribute__((used)) static void nonpaging_prefetch_page(struct kvm_vcpu *vcpu,
        struct kvm_mmu_page *sp)
{
 int i;

 for (i = 0; i < PT64_ENT_PER_PAGE; ++i)
  sp->spt[i] = shadow_trap_nonpresent_pte;
}
