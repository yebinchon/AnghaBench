
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_mmu {int root_hpa; int shadow_root_level; scalar_t__ root_level; int invlpg; int sync_page; int prefetch_page; int free; int gva_to_gpa; int page_fault; int new_cr3; } ;
struct TYPE_2__ {struct kvm_mmu mmu; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int INVALID_PAGE ;
 int PT32E_ROOT_LEVEL ;
 int nonpaging_free ;
 int nonpaging_gva_to_gpa ;
 int nonpaging_invlpg ;
 int nonpaging_new_cr3 ;
 int nonpaging_page_fault ;
 int nonpaging_prefetch_page ;
 int nonpaging_sync_page ;

__attribute__((used)) static int nonpaging_init_context(struct kvm_vcpu *vcpu)
{
 struct kvm_mmu *context = &vcpu->arch.mmu;

 context->new_cr3 = nonpaging_new_cr3;
 context->page_fault = nonpaging_page_fault;
 context->gva_to_gpa = nonpaging_gva_to_gpa;
 context->free = nonpaging_free;
 context->prefetch_page = nonpaging_prefetch_page;
 context->sync_page = nonpaging_sync_page;
 context->invlpg = nonpaging_invlpg;
 context->root_level = 0;
 context->shadow_root_level = PT32E_ROOT_LEVEL;
 context->root_hpa = INVALID_PAGE;
 return 0;
}
