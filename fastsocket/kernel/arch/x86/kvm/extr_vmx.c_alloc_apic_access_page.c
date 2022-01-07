
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_userspace_memory_region {int guest_phys_addr; int memory_size; scalar_t__ flags; int slot; } ;
struct TYPE_2__ {scalar_t__ apic_access_page; } ;
struct kvm {int slots_lock; TYPE_1__ arch; } ;


 int APIC_ACCESS_PAGE_PRIVATE_MEMSLOT ;
 int PAGE_SIZE ;
 int __kvm_set_memory_region (struct kvm*,struct kvm_userspace_memory_region*,int ) ;
 scalar_t__ gfn_to_page (struct kvm*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int alloc_apic_access_page(struct kvm *kvm)
{
 struct kvm_userspace_memory_region kvm_userspace_mem;
 int r = 0;

 mutex_lock(&kvm->slots_lock);
 if (kvm->arch.apic_access_page)
  goto out;
 kvm_userspace_mem.slot = APIC_ACCESS_PAGE_PRIVATE_MEMSLOT;
 kvm_userspace_mem.flags = 0;
 kvm_userspace_mem.guest_phys_addr = 0xfee00000ULL;
 kvm_userspace_mem.memory_size = PAGE_SIZE;
 r = __kvm_set_memory_region(kvm, &kvm_userspace_mem, 0);
 if (r)
  goto out;

 kvm->arch.apic_access_page = gfn_to_page(kvm, 0xfee00);
out:
 mutex_unlock(&kvm->slots_lock);
 return r;
}
