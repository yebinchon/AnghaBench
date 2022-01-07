
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;
struct kvm_memory_slot {scalar_t__ dirty_bitmap; } ;
typedef int gfn_t ;


 int PT_DIRECTORY_LEVEL ;
 int PT_PAGE_TABLE_LEVEL ;
 struct kvm_memory_slot* gfn_to_memslot (int ,int ) ;
 scalar_t__ has_wrprotected_page (int ,int ,int) ;
 int host_mapping_level (int ,int ) ;

__attribute__((used)) static int mapping_level(struct kvm_vcpu *vcpu, gfn_t large_gfn)
{
 struct kvm_memory_slot *slot;
 int host_level;
 int level = PT_PAGE_TABLE_LEVEL;

 slot = gfn_to_memslot(vcpu->kvm, large_gfn);
 if (slot && slot->dirty_bitmap)
  return PT_PAGE_TABLE_LEVEL;

 host_level = host_mapping_level(vcpu->kvm, large_gfn);

 if (host_level == PT_PAGE_TABLE_LEVEL)
  return host_level;

 for (level = PT_DIRECTORY_LEVEL; level <= host_level; ++level)
  if (has_wrprotected_page(vcpu->kvm, large_gfn, level))
   break;

 return level - 1;
}
