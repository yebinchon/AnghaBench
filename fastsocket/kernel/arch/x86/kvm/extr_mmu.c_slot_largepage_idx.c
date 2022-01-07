
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_memory_slot {unsigned long base_gfn; TYPE_1__** lpage_info; } ;
typedef unsigned long gfn_t ;
struct TYPE_2__ {int write_count; } ;


 unsigned long KVM_PAGES_PER_HPAGE (int) ;

__attribute__((used)) static int *slot_largepage_idx(gfn_t gfn,
          struct kvm_memory_slot *slot,
          int level)
{
 unsigned long idx;

 idx = (gfn / KVM_PAGES_PER_HPAGE(level)) -
       (slot->base_gfn / KVM_PAGES_PER_HPAGE(level));
 return &slot->lpage_info[level - 2][idx].write_count;
}
