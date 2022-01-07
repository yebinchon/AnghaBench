
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sn_rtc_tr_slot; int vm_tr_slot; int vmm_tr_slot; } ;
struct kvm_vcpu {TYPE_2__ arch; struct kvm* kvm; } ;
struct TYPE_3__ {scalar_t__ is_sn2; } ;
struct kvm {TYPE_1__ arch; } ;


 int ia64_ptr_entry (int,int ) ;

__attribute__((used)) static void kvm_purge_vmm_mapping(struct kvm_vcpu *vcpu)
{
 struct kvm *kvm = vcpu->kvm;
 ia64_ptr_entry(0x3, vcpu->arch.vmm_tr_slot);
 ia64_ptr_entry(0x3, vcpu->arch.vm_tr_slot);




}
