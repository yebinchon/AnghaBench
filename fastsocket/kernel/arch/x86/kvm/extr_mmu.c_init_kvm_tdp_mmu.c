
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_mmu {void* root_level; void* gva_to_gpa; int root_hpa; int shadow_root_level; int invlpg; int sync_page; int prefetch_page; int free; int page_fault; int new_cr3; } ;
struct TYPE_3__ {struct kvm_mmu mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int (* get_tdp_level ) () ;} ;


 int INVALID_PAGE ;
 void* PT32E_ROOT_LEVEL ;
 void* PT32_ROOT_LEVEL ;
 void* PT64_ROOT_LEVEL ;
 scalar_t__ is_long_mode (struct kvm_vcpu*) ;
 scalar_t__ is_pae (struct kvm_vcpu*) ;
 int is_paging (struct kvm_vcpu*) ;
 TYPE_2__* kvm_x86_ops ;
 int nonpaging_free ;
 void* nonpaging_gva_to_gpa ;
 int nonpaging_invlpg ;
 int nonpaging_new_cr3 ;
 int nonpaging_prefetch_page ;
 int nonpaging_sync_page ;
 void* paging32_gva_to_gpa ;
 void* paging64_gva_to_gpa ;
 int reset_rsvds_bits_mask (struct kvm_vcpu*,void*) ;
 int stub1 () ;
 int tdp_page_fault ;

__attribute__((used)) static int init_kvm_tdp_mmu(struct kvm_vcpu *vcpu)
{
 struct kvm_mmu *context = &vcpu->arch.mmu;

 context->new_cr3 = nonpaging_new_cr3;
 context->page_fault = tdp_page_fault;
 context->free = nonpaging_free;
 context->prefetch_page = nonpaging_prefetch_page;
 context->sync_page = nonpaging_sync_page;
 context->invlpg = nonpaging_invlpg;
 context->shadow_root_level = kvm_x86_ops->get_tdp_level();
 context->root_hpa = INVALID_PAGE;

 if (!is_paging(vcpu)) {
  context->gva_to_gpa = nonpaging_gva_to_gpa;
  context->root_level = 0;
 } else if (is_long_mode(vcpu)) {
  reset_rsvds_bits_mask(vcpu, PT64_ROOT_LEVEL);
  context->gva_to_gpa = paging64_gva_to_gpa;
  context->root_level = PT64_ROOT_LEVEL;
 } else if (is_pae(vcpu)) {
  reset_rsvds_bits_mask(vcpu, PT32E_ROOT_LEVEL);
  context->gva_to_gpa = paging64_gva_to_gpa;
  context->root_level = PT32E_ROOT_LEVEL;
 } else {
  reset_rsvds_bits_mask(vcpu, PT32_ROOT_LEVEL);
  context->gva_to_gpa = paging32_gva_to_gpa;
  context->root_level = PT32_ROOT_LEVEL;
 }

 return 0;
}
