
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_mmu {int root_hpa; int shadow_root_level; int root_level; int invlpg; int sync_page; int prefetch_page; int free; int gva_to_gpa; int page_fault; int new_cr3; } ;
struct TYPE_2__ {struct kvm_mmu mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int INVALID_PAGE ;
 int PT32E_ROOT_LEVEL ;
 int PT32_ROOT_LEVEL ;
 int paging32_gva_to_gpa ;
 int paging32_invlpg ;
 int paging32_page_fault ;
 int paging32_prefetch_page ;
 int paging32_sync_page ;
 int paging_free ;
 int paging_new_cr3 ;
 int reset_rsvds_bits_mask (struct kvm_vcpu*,int ) ;

__attribute__((used)) static int paging32_init_context(struct kvm_vcpu *vcpu)
{
 struct kvm_mmu *context = &vcpu->arch.mmu;

 reset_rsvds_bits_mask(vcpu, PT32_ROOT_LEVEL);
 context->new_cr3 = paging_new_cr3;
 context->page_fault = paging32_page_fault;
 context->gva_to_gpa = paging32_gva_to_gpa;
 context->free = paging_free;
 context->prefetch_page = paging32_prefetch_page;
 context->sync_page = paging32_sync_page;
 context->invlpg = paging32_invlpg;
 context->root_level = PT32_ROOT_LEVEL;
 context->shadow_root_level = PT32E_ROOT_LEVEL;
 context->root_hpa = INVALID_PAGE;
 return 0;
}
