
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_userspace_memory_region {int userspace_addr; int memory_size; scalar_t__ guest_phys_addr; scalar_t__ slot; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;


 int EINVAL ;
 int PAGE_SIZE ;

int kvm_arch_prepare_memory_region(struct kvm *kvm,
       struct kvm_memory_slot *memslot,
       struct kvm_memory_slot old,
       struct kvm_userspace_memory_region *mem,
       int user_alloc)
{







 if (mem->slot)
  return -EINVAL;

 if (mem->guest_phys_addr)
  return -EINVAL;

 if (mem->userspace_addr & (PAGE_SIZE - 1))
  return -EINVAL;

 if (mem->memory_size & (PAGE_SIZE - 1))
  return -EINVAL;

 if (!user_alloc)
  return -EINVAL;

 return 0;
}
