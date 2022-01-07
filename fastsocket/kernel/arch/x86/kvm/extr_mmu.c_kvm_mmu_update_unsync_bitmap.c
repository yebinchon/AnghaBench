
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_mmu_page {int unsync_children; int unsync_child_bitmap; int * spt; } ;


 int WARN_ON (int) ;
 int __pa (int *) ;
 int __test_and_set_bit (unsigned int,int ) ;
 struct kvm_mmu_page* page_header (int ) ;

__attribute__((used)) static void kvm_mmu_update_unsync_bitmap(u64 *spte)
{
 unsigned int index;
 struct kvm_mmu_page *sp = page_header(__pa(spte));

 index = spte - sp->spt;
 if (!__test_and_set_bit(index, sp->unsync_child_bitmap))
  sp->unsync_children++;
 WARN_ON(!sp->unsync_children);
}
