
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int mmu_page_cache; int mmu_page_header_cache; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_1__ arch; } ;
struct kvm_mmu_page {int * parent_pte; scalar_t__ multimapped; int slot_bitmap; int oos_link; int link; void* spt; void* gfns; } ;
struct TYPE_5__ {int active_mmu_pages; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ KVM_MEMORY_SLOTS ;
 scalar_t__ KVM_PRIVATE_MEM_SLOTS ;
 int PAGE_SIZE ;
 int bitmap_zero (int ,scalar_t__) ;
 int kvm_mod_used_mmu_pages (TYPE_3__*,int) ;
 int list_add (int *,int *) ;
 void* mmu_memory_cache_alloc (int *,int) ;
 int set_page_private (int ,unsigned long) ;
 int virt_to_page (void*) ;

__attribute__((used)) static struct kvm_mmu_page *kvm_mmu_alloc_page(struct kvm_vcpu *vcpu,
            u64 *parent_pte)
{
 struct kvm_mmu_page *sp;

 sp = mmu_memory_cache_alloc(&vcpu->arch.mmu_page_header_cache, sizeof *sp);
 sp->spt = mmu_memory_cache_alloc(&vcpu->arch.mmu_page_cache, PAGE_SIZE);
 sp->gfns = mmu_memory_cache_alloc(&vcpu->arch.mmu_page_cache, PAGE_SIZE);
 set_page_private(virt_to_page(sp->spt), (unsigned long)sp);
 list_add(&sp->link, &vcpu->kvm->arch.active_mmu_pages);
 INIT_LIST_HEAD(&sp->oos_link);
 bitmap_zero(sp->slot_bitmap, KVM_MEMORY_SLOTS + KVM_PRIVATE_MEM_SLOTS);
 sp->multimapped = 0;
 sp->parent_pte = parent_pte;
 kvm_mod_used_mmu_pages(vcpu->kvm, +1);
 return sp;
}
