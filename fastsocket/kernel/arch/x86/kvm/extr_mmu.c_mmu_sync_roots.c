
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ shadow_root_level; int * pae_root; int root_hpa; } ;
struct TYPE_3__ {TYPE_2__ mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_mmu_page {int dummy; } ;
typedef int hpa_t ;


 int PT64_BASE_ADDR_MASK ;
 scalar_t__ PT64_ROOT_LEVEL ;
 scalar_t__ VALID_PAGE (int ) ;
 int mmu_sync_children (struct kvm_vcpu*,struct kvm_mmu_page*) ;
 struct kvm_mmu_page* page_header (int ) ;

__attribute__((used)) static void mmu_sync_roots(struct kvm_vcpu *vcpu)
{
 int i;
 struct kvm_mmu_page *sp;

 if (!VALID_PAGE(vcpu->arch.mmu.root_hpa))
  return;
 if (vcpu->arch.mmu.shadow_root_level == PT64_ROOT_LEVEL) {
  hpa_t root = vcpu->arch.mmu.root_hpa;
  sp = page_header(root);
  mmu_sync_children(vcpu, sp);
  return;
 }
 for (i = 0; i < 4; ++i) {
  hpa_t root = vcpu->arch.mmu.pae_root[i];

  if (root && VALID_PAGE(root)) {
   root &= PT64_BASE_ADDR_MASK;
   sp = page_header(root);
   mmu_sync_children(vcpu, sp);
  }
 }
}
