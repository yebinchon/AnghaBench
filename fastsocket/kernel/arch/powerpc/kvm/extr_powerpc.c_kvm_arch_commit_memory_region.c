
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_userspace_memory_region {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;



void kvm_arch_commit_memory_region(struct kvm *kvm,
               struct kvm_userspace_memory_region *mem,
               struct kvm_memory_slot old,
               int user_alloc)
{
       return;
}
