
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {TYPE_1__* kvm; } ;
typedef int gva_t ;
typedef int gpa_t ;
struct TYPE_2__ {int mmu_lock; } ;


 int PAGE_SHIFT ;
 int kvm_mmu_gva_to_gpa_read (struct kvm_vcpu*,int ,int *) ;
 int kvm_mmu_unprotect_page (TYPE_1__*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ tdp_enabled ;

int kvm_mmu_unprotect_page_virt(struct kvm_vcpu *vcpu, gva_t gva)
{
 gpa_t gpa;
 int r;

 if (tdp_enabled)
  return 0;

 gpa = kvm_mmu_gva_to_gpa_read(vcpu, gva, ((void*)0));

 spin_lock(&vcpu->kvm->mmu_lock);
 r = kvm_mmu_unprotect_page(vcpu->kvm, gpa >> PAGE_SHIFT);
 spin_unlock(&vcpu->kvm->mmu_lock);
 return r;
}
