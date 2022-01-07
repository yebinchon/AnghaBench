
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_page {int slot_bitmap; } ;
struct kvm {int dummy; } ;
typedef int gfn_t ;


 int __pa (void*) ;
 int __set_bit (int,int ) ;
 int memslot_id (struct kvm*,int ) ;
 struct kvm_mmu_page* page_header (int ) ;

__attribute__((used)) static void page_header_update_slot(struct kvm *kvm, void *pte, gfn_t gfn)
{
 int slot = memslot_id(kvm, gfn);
 struct kvm_mmu_page *sp = page_header(__pa(pte));

 __set_bit(slot, sp->slot_bitmap);
}
