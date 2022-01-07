
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gfn_t ;


 struct kvm_memory_slot* gfn_to_memslot_unaliased (struct kvm*,int ) ;
 int* slot_largepage_idx (int ,struct kvm_memory_slot*,int) ;
 int unalias_gfn (struct kvm*,int ) ;

__attribute__((used)) static int has_wrprotected_page(struct kvm *kvm,
    gfn_t gfn,
    int level)
{
 struct kvm_memory_slot *slot;
 int *largepage_idx;

 gfn = unalias_gfn(kvm, gfn);
 slot = gfn_to_memslot_unaliased(kvm, gfn);
 if (slot) {
  largepage_idx = slot_largepage_idx(gfn, slot, level);
  return *largepage_idx;
 }

 return 1;
}
