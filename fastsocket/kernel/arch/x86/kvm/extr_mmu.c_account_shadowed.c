
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gfn_t ;


 int KVM_NR_PAGE_SIZES ;
 int PT_DIRECTORY_LEVEL ;
 int PT_PAGE_TABLE_LEVEL ;
 struct kvm_memory_slot* gfn_to_memslot_unaliased (struct kvm*,int ) ;
 int* slot_largepage_idx (int ,struct kvm_memory_slot*,int) ;
 int unalias_gfn (struct kvm*,int ) ;

__attribute__((used)) static void account_shadowed(struct kvm *kvm, gfn_t gfn)
{
 struct kvm_memory_slot *slot;
 int *write_count;
 int i;

 gfn = unalias_gfn(kvm, gfn);

 slot = gfn_to_memslot_unaliased(kvm, gfn);
 for (i = PT_DIRECTORY_LEVEL;
      i < PT_PAGE_TABLE_LEVEL + KVM_NR_PAGE_SIZES; ++i) {
  write_count = slot_largepage_idx(gfn, slot, i);
  *write_count += 1;
 }
}
