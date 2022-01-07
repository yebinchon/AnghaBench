
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_userspace_memory_region {int guest_phys_addr; int memory_size; scalar_t__ flags; int slot; } ;
struct TYPE_2__ {int ept_identity_map_addr; scalar_t__ ept_identity_pagetable; } ;
struct kvm {int slots_lock; TYPE_1__ arch; } ;


 int IDENTITY_PAGETABLE_PRIVATE_MEMSLOT ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int __kvm_set_memory_region (struct kvm*,struct kvm_userspace_memory_region*,int ) ;
 scalar_t__ gfn_to_page (struct kvm*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int alloc_identity_pagetable(struct kvm *kvm)
{
 struct kvm_userspace_memory_region kvm_userspace_mem;
 int r = 0;

 mutex_lock(&kvm->slots_lock);
 if (kvm->arch.ept_identity_pagetable)
  goto out;
 kvm_userspace_mem.slot = IDENTITY_PAGETABLE_PRIVATE_MEMSLOT;
 kvm_userspace_mem.flags = 0;
 kvm_userspace_mem.guest_phys_addr =
  kvm->arch.ept_identity_map_addr;
 kvm_userspace_mem.memory_size = PAGE_SIZE;
 r = __kvm_set_memory_region(kvm, &kvm_userspace_mem, 0);
 if (r)
  goto out;

 kvm->arch.ept_identity_pagetable = gfn_to_page(kvm,
   kvm->arch.ept_identity_map_addr >> PAGE_SHIFT);
out:
 mutex_unlock(&kvm->slots_lock);
 return r;
}
