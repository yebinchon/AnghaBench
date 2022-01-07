
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vmm_tr_slot; int vm_tr_slot; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm* kvm; } ;
struct TYPE_4__ {scalar_t__ is_sn2; int vm_base; } ;
struct kvm {TYPE_2__ arch; } ;


 int KVM_VMM_BASE ;
 int KVM_VMM_SHIFT ;
 int KVM_VM_DATA_BASE ;
 int KVM_VM_DATA_SHIFT ;
 int PAGE_KERNEL ;
 int __pa (int ) ;
 int ia64_itr_entry (int,int ,unsigned long,int ) ;
 int kvm_sn2_setup_mappings (struct kvm_vcpu*) ;
 int kvm_vmm_base ;
 int mk_pte_phys (int ,int ) ;
 unsigned long pte_val (int ) ;

__attribute__((used)) static int kvm_insert_vmm_mapping(struct kvm_vcpu *vcpu)
{
 unsigned long pte;
 struct kvm *kvm = vcpu->kvm;
 int r;


 pte = pte_val(mk_pte_phys(__pa(kvm_vmm_base), PAGE_KERNEL));
 r = ia64_itr_entry(0x3, KVM_VMM_BASE, pte, KVM_VMM_SHIFT);
 if (r < 0)
  goto out;
 vcpu->arch.vmm_tr_slot = r;

 pte = pte_val(mk_pte_phys(__pa(kvm->arch.vm_base), PAGE_KERNEL));
 r = ia64_itr_entry(0x3, KVM_VM_DATA_BASE,
     pte, KVM_VM_DATA_SHIFT);
 if (r < 0)
  goto out;
 vcpu->arch.vm_tr_slot = r;
 r = 0;
out:
 return r;
}
