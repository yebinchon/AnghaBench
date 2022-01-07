
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int mmu_free_roots (struct kvm_vcpu*) ;

__attribute__((used)) static void nonpaging_free(struct kvm_vcpu *vcpu)
{
 mmu_free_roots(vcpu);
}
