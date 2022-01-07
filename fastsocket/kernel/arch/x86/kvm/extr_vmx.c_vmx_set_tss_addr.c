
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_userspace_memory_region {unsigned int guest_phys_addr; int memory_size; int flags; int slot; } ;
struct TYPE_2__ {unsigned int tss_addr; } ;
struct kvm {TYPE_1__ arch; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int TSS_PRIVATE_MEMSLOT ;
 int init_rmode_tss (struct kvm*) ;
 int kvm_set_memory_region (struct kvm*,struct kvm_userspace_memory_region*,int ) ;

__attribute__((used)) static int vmx_set_tss_addr(struct kvm *kvm, unsigned int addr)
{
 int ret;
 struct kvm_userspace_memory_region tss_mem = {
  .slot = TSS_PRIVATE_MEMSLOT,
  .guest_phys_addr = addr,
  .memory_size = PAGE_SIZE * 3,
  .flags = 0,
 };

 ret = kvm_set_memory_region(kvm, &tss_mem, 0);
 if (ret)
  return ret;
 kvm->arch.tss_addr = addr;
 if (!init_rmode_tss(kvm))
  return -ENOMEM;

 return 0;
}
