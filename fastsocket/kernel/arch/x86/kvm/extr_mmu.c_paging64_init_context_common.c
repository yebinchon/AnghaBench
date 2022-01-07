
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_mmu {int root_level; int shadow_root_level; int root_hpa; int free; int invlpg; int sync_page; int prefetch_page; int gva_to_gpa; int page_fault; int new_cr3; } ;
struct TYPE_2__ {struct kvm_mmu mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int ASSERT (int ) ;
 int INVALID_PAGE ;
 int is_pae (struct kvm_vcpu*) ;
 int paging64_gva_to_gpa ;
 int paging64_invlpg ;
 int paging64_page_fault ;
 int paging64_prefetch_page ;
 int paging64_sync_page ;
 int paging_free ;
 int paging_new_cr3 ;

__attribute__((used)) static int paging64_init_context_common(struct kvm_vcpu *vcpu, int level)
{
 struct kvm_mmu *context = &vcpu->arch.mmu;

 ASSERT(is_pae(vcpu));
 context->new_cr3 = paging_new_cr3;
 context->page_fault = paging64_page_fault;
 context->gva_to_gpa = paging64_gva_to_gpa;
 context->prefetch_page = paging64_prefetch_page;
 context->sync_page = paging64_sync_page;
 context->invlpg = paging64_invlpg;
 context->free = paging_free;
 context->root_level = level;
 context->shadow_root_level = level;
 context->root_hpa = INVALID_PAGE;
 return 0;
}
