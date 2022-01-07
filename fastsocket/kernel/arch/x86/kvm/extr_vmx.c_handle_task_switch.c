
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef unsigned long u16 ;
struct vcpu_vmx {int idt_vectoring_info; } ;
struct TYPE_2__ {int nmi_injected; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EXIT_QUALIFICATION ;
 int GUEST_DR7 ;
 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_INTR_STATE_NMI ;
 int IDT_VECTORING_ERROR_CODE ;





 int TASK_SWITCH_GATE ;
 int VECTORING_INFO_DELIVER_CODE_MASK ;
 int VECTORING_INFO_TYPE_MASK ;
 int VECTORING_INFO_VALID_MASK ;
 int cpu_has_virtual_nmis () ;
 int kvm_clear_exception_queue (struct kvm_vcpu*) ;
 int kvm_clear_interrupt_queue (struct kvm_vcpu*) ;
 int kvm_task_switch (struct kvm_vcpu*,unsigned long,int,int,int) ;
 int skip_emulated_instruction (struct kvm_vcpu*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmcs_read32 (int ) ;
 int vmcs_readl (int ) ;
 int vmcs_set_bits (int ,int ) ;
 int vmcs_writel (int ,int) ;

__attribute__((used)) static int handle_task_switch(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 unsigned long exit_qualification;
 bool has_error_code = 0;
 u32 error_code = 0;
 u16 tss_selector;
 int reason, type, idt_v;

 idt_v = (vmx->idt_vectoring_info & VECTORING_INFO_VALID_MASK);
 type = (vmx->idt_vectoring_info & VECTORING_INFO_TYPE_MASK);

 exit_qualification = vmcs_readl(EXIT_QUALIFICATION);

 reason = (u32)exit_qualification >> 30;
 if (reason == TASK_SWITCH_GATE && idt_v) {
  switch (type) {
  case 130:
   vcpu->arch.nmi_injected = 0;
   if (cpu_has_virtual_nmis())
    vmcs_set_bits(GUEST_INTERRUPTIBILITY_INFO,
           GUEST_INTR_STATE_NMI);
   break;
  case 132:
  case 128:
   kvm_clear_interrupt_queue(vcpu);
   break;
  case 131:
   if (vmx->idt_vectoring_info &
       VECTORING_INFO_DELIVER_CODE_MASK) {
    has_error_code = 1;
    error_code =
     vmcs_read32(IDT_VECTORING_ERROR_CODE);
   }

  case 129:
   kvm_clear_exception_queue(vcpu);
   break;
  default:
   break;
  }
 }
 tss_selector = exit_qualification;

 if (!idt_v || (type != 131 &&
         type != 132 &&
         type != 130))
  skip_emulated_instruction(vcpu);

 if (!kvm_task_switch(vcpu, tss_selector, reason, has_error_code,
        error_code))
  return 0;


 vmcs_writel(GUEST_DR7, vmcs_readl(GUEST_DR7) & ~55);






 return 1;
}
