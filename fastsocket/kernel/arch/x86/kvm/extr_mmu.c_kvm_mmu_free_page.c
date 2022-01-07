
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_mmu_page {int gfns; int spt; int link; } ;
struct kvm {int dummy; } ;


 int ASSERT (int ) ;
 int __free_page (int ) ;
 int is_empty_shadow_page (int ) ;
 int kfree (struct kvm_mmu_page*) ;
 int kvm_mod_used_mmu_pages (struct kvm*,int) ;
 int list_del (int *) ;
 int virt_to_page (int ) ;

__attribute__((used)) static void kvm_mmu_free_page(struct kvm *kvm, struct kvm_mmu_page *sp)
{
 ASSERT(is_empty_shadow_page(sp->spt));
 list_del(&sp->link);
 __free_page(virt_to_page(sp->spt));
 __free_page(virt_to_page(sp->gfns));
 kfree(sp);
 kvm_mod_used_mmu_pages(kvm, -1);
}
