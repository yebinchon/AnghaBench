
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ n_requested_mmu_pages; } ;
struct kvm {int slots_lock; int mmu_lock; TYPE_1__ arch; } ;


 int EINVAL ;
 scalar_t__ KVM_MIN_ALLOC_MMU_PAGES ;
 int kvm_mmu_change_mmu_pages (struct kvm*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int kvm_vm_ioctl_set_nr_mmu_pages(struct kvm *kvm,
       u32 kvm_nr_mmu_pages)
{
 if (kvm_nr_mmu_pages < KVM_MIN_ALLOC_MMU_PAGES)
  return -EINVAL;

 mutex_lock(&kvm->slots_lock);
 spin_lock(&kvm->mmu_lock);

 kvm_mmu_change_mmu_pages(kvm, kvm_nr_mmu_pages);
 kvm->arch.n_requested_mmu_pages = kvm_nr_mmu_pages;

 spin_unlock(&kvm->mmu_lock);
 mutex_unlock(&kvm->slots_lock);
 return 0;
}
