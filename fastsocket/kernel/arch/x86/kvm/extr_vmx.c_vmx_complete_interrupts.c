
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_9__ {int nmi_injected; void* event_exit_inst_len; } ;
struct TYPE_10__ {TYPE_1__ arch; } ;
struct vcpu_vmx {int idt_vectoring_info; scalar_t__ exit_reason; TYPE_2__ vcpu; int entry_time; int vnmi_blocked_time; int soft_vnmi_blocked; } ;


 int DF_VECTOR ;
 scalar_t__ EXIT_REASON_EXCEPTION_NMI ;
 scalar_t__ EXIT_REASON_MCE_DURING_VMENTRY ;
 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_INTR_STATE_NMI ;
 int IDT_VECTORING_ERROR_CODE ;
 int INTR_INFO_INTR_TYPE_MASK ;
 int INTR_INFO_UNBLOCK_NMI ;
 int INTR_INFO_VALID_MASK ;
 int INTR_INFO_VECTOR_MASK ;





 int VECTORING_INFO_DELIVER_CODE_MASK ;
 int VECTORING_INFO_TYPE_MASK ;
 int VECTORING_INFO_VALID_MASK ;
 int VECTORING_INFO_VECTOR_MASK ;
 int VM_EXIT_INSTRUCTION_LEN ;
 int VM_EXIT_INTR_INFO ;
 int VM_EXIT_REASON ;
 scalar_t__ cpu_has_virtual_nmis () ;
 scalar_t__ is_machine_check (int) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 int kvm_after_handle_nmi (TYPE_2__*) ;
 int kvm_before_handle_nmi (TYPE_2__*) ;
 int kvm_clear_exception_queue (TYPE_2__*) ;
 int kvm_clear_interrupt_queue (TYPE_2__*) ;
 int kvm_machine_check () ;
 int kvm_queue_exception (TYPE_2__*,int) ;
 int kvm_queue_exception_e (TYPE_2__*,int,int) ;
 int kvm_queue_interrupt (TYPE_2__*,int,int) ;
 scalar_t__ unlikely (int ) ;
 int vmcs_clear_bits (int ,int ) ;
 void* vmcs_read32 (int ) ;
 int vmcs_set_bits (int ,int ) ;

__attribute__((used)) static void vmx_complete_interrupts(struct vcpu_vmx *vmx)
{
 u32 exit_intr_info;
 u32 idt_vectoring_info = vmx->idt_vectoring_info;
 bool unblock_nmi;
 u8 vector;
 int type;
 bool idtv_info_valid;

 exit_intr_info = vmcs_read32(VM_EXIT_INTR_INFO);

 vmx->exit_reason = vmcs_read32(VM_EXIT_REASON);


 if ((vmx->exit_reason == EXIT_REASON_MCE_DURING_VMENTRY)
     || (vmx->exit_reason == EXIT_REASON_EXCEPTION_NMI
  && is_machine_check(exit_intr_info)))
  kvm_machine_check();


 if ((exit_intr_info & INTR_INFO_INTR_TYPE_MASK) == 130 &&
     (exit_intr_info & INTR_INFO_VALID_MASK)) {
  kvm_before_handle_nmi(&vmx->vcpu);
  asm("int $2");
  kvm_after_handle_nmi(&vmx->vcpu);
 }

 idtv_info_valid = idt_vectoring_info & VECTORING_INFO_VALID_MASK;

 if (cpu_has_virtual_nmis()) {
  unblock_nmi = (exit_intr_info & INTR_INFO_UNBLOCK_NMI) != 0;
  vector = exit_intr_info & INTR_INFO_VECTOR_MASK;
  if ((exit_intr_info & INTR_INFO_VALID_MASK) && unblock_nmi &&
      vector != DF_VECTOR && !idtv_info_valid)
   vmcs_set_bits(GUEST_INTERRUPTIBILITY_INFO,
          GUEST_INTR_STATE_NMI);
 } else if (unlikely(vmx->soft_vnmi_blocked))
  vmx->vnmi_blocked_time +=
   ktime_to_ns(ktime_sub(ktime_get(), vmx->entry_time));

 vmx->vcpu.arch.nmi_injected = 0;
 kvm_clear_exception_queue(&vmx->vcpu);
 kvm_clear_interrupt_queue(&vmx->vcpu);

 if (!idtv_info_valid)
  return;

 vector = idt_vectoring_info & VECTORING_INFO_VECTOR_MASK;
 type = idt_vectoring_info & VECTORING_INFO_TYPE_MASK;

 switch (type) {
 case 130:
  vmx->vcpu.arch.nmi_injected = 1;





  vmcs_clear_bits(GUEST_INTERRUPTIBILITY_INFO,
    GUEST_INTR_STATE_NMI);
  break;
 case 129:
  vmx->vcpu.arch.event_exit_inst_len =
   vmcs_read32(VM_EXIT_INSTRUCTION_LEN);

 case 131:
  if (idt_vectoring_info & VECTORING_INFO_DELIVER_CODE_MASK) {
   u32 err = vmcs_read32(IDT_VECTORING_ERROR_CODE);
   kvm_queue_exception_e(&vmx->vcpu, vector, err);
  } else
   kvm_queue_exception(&vmx->vcpu, vector);
  break;
 case 128:
  vmx->vcpu.arch.event_exit_inst_len =
   vmcs_read32(VM_EXIT_INSTRUCTION_LEN);

 case 132:
  kvm_queue_interrupt(&vmx->vcpu, vector,
   type == 128);
  break;
 default:
  break;
 }
}
