
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;


 scalar_t__ KVM_MIN_FREE_MMU_PAGES ;
 int __kvm_mmu_free_some_pages (struct kvm_vcpu*) ;
 scalar_t__ kvm_mmu_available_pages (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline void kvm_mmu_free_some_pages(struct kvm_vcpu *vcpu)
{
 if (unlikely(kvm_mmu_available_pages(vcpu->kvm)< KVM_MIN_FREE_MMU_PAGES))
  __kvm_mmu_free_some_pages(vcpu);
}
