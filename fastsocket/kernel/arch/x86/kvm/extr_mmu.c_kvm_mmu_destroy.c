
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int ASSERT (struct kvm_vcpu*) ;
 int destroy_kvm_mmu (struct kvm_vcpu*) ;
 int free_mmu_pages (struct kvm_vcpu*) ;
 int mmu_free_memory_caches (struct kvm_vcpu*) ;

void kvm_mmu_destroy(struct kvm_vcpu *vcpu)
{
 ASSERT(vcpu);

 destroy_kvm_mmu(vcpu);
 free_mmu_pages(vcpu);
 mmu_free_memory_caches(vcpu);
}
