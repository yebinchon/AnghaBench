
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct vcpu_svm {TYPE_2__* vmcb; int vcpu; } ;
struct TYPE_3__ {int insn_len; int insn_bytes; int exit_info_1; int exit_info_2; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 scalar_t__ kvm_event_needs_reinjection (int *) ;
 int kvm_mmu_page_fault (int *,int ,int ,int ,int ) ;
 int kvm_mmu_unprotect_page_virt (int *,int ) ;
 int npt_enabled ;
 int trace_kvm_page_fault (int ,int ) ;

__attribute__((used)) static int pf_interception(struct vcpu_svm *svm)
{
 u64 fault_address;
 u32 error_code;

 fault_address = svm->vmcb->control.exit_info_2;
 error_code = svm->vmcb->control.exit_info_1;

 trace_kvm_page_fault(fault_address, error_code);
 if (!npt_enabled && kvm_event_needs_reinjection(&svm->vcpu))
  kvm_mmu_unprotect_page_virt(&svm->vcpu, fault_address);
 return kvm_mmu_page_fault(&svm->vcpu, fault_address, error_code,
      svm->vmcb->control.insn_bytes,
      svm->vmcb->control.insn_len);
}
