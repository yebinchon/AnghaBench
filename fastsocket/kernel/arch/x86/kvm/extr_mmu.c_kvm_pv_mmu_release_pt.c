
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {TYPE_1__* kvm; } ;
typedef int gpa_t ;
struct TYPE_2__ {int mmu_lock; } ;


 int PAGE_SHIFT ;
 int mmu_unshadow (TYPE_1__*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int kvm_pv_mmu_release_pt(struct kvm_vcpu *vcpu, gpa_t addr)
{
 spin_lock(&vcpu->kvm->mmu_lock);
 mmu_unshadow(vcpu->kvm, addr >> PAGE_SHIFT);
 spin_unlock(&vcpu->kvm->mmu_lock);
 return 1;
}
