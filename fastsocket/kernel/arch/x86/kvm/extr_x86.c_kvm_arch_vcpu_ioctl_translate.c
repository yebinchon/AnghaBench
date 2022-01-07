
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {TYPE_1__* kvm; } ;
struct kvm_translation {unsigned long linear_address; int valid; int writeable; scalar_t__ usermode; scalar_t__ physical_address; } ;
typedef scalar_t__ gpa_t ;
struct TYPE_2__ {int srcu; } ;


 scalar_t__ UNMAPPED_GVA ;
 scalar_t__ kvm_mmu_gva_to_gpa_system (struct kvm_vcpu*,unsigned long,int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_translate(struct kvm_vcpu *vcpu,
        struct kvm_translation *tr)
{
 unsigned long vaddr = tr->linear_address;
 gpa_t gpa;
 int idx;

 vcpu_load(vcpu);
 idx = srcu_read_lock(&vcpu->kvm->srcu);
 gpa = kvm_mmu_gva_to_gpa_system(vcpu, vaddr, ((void*)0));
 srcu_read_unlock(&vcpu->kvm->srcu, idx);
 tr->physical_address = gpa;
 tr->valid = gpa != UNMAPPED_GVA;
 tr->writeable = 1;
 tr->usermode = 0;
 vcpu_put(vcpu);

 return 0;
}
