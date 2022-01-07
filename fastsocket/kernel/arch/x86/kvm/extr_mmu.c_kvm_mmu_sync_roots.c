
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {TYPE_1__* kvm; } ;
struct TYPE_2__ {int mmu_lock; } ;


 int mmu_sync_roots (struct kvm_vcpu*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void kvm_mmu_sync_roots(struct kvm_vcpu *vcpu)
{
 spin_lock(&vcpu->kvm->mmu_lock);
 mmu_sync_roots(vcpu);
 spin_unlock(&vcpu->kvm->mmu_lock);
}
