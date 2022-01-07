
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct TYPE_6__ {scalar_t__ level; scalar_t__ glevels; } ;
struct kvm_mmu_page {TYPE_3__ role; } ;
struct TYPE_4__ {int mmu_pte_updated; int mmu_pde_zapped; } ;
struct TYPE_5__ {TYPE_1__ stat; } ;


 scalar_t__ PT32_ROOT_LEVEL ;
 scalar_t__ PT_PAGE_TABLE_LEVEL ;
 int paging32_update_pte (struct kvm_vcpu*,struct kvm_mmu_page*,int *,void const*) ;
 int paging64_update_pte (struct kvm_vcpu*,struct kvm_mmu_page*,int *,void const*) ;

__attribute__((used)) static void mmu_pte_write_new_pte(struct kvm_vcpu *vcpu,
      struct kvm_mmu_page *sp,
      u64 *spte,
      const void *new)
{
 if (sp->role.level != PT_PAGE_TABLE_LEVEL) {
  ++vcpu->kvm->stat.mmu_pde_zapped;
  return;
        }

 ++vcpu->kvm->stat.mmu_pte_updated;
 if (sp->role.glevels == PT32_ROOT_LEVEL)
  paging32_update_pte(vcpu, sp, spte, new);
 else
  paging64_update_pte(vcpu, sp, spte, new);
}
