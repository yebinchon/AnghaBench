
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_vmx {int invalid_state_emulation_result; } ;
struct kvm_vcpu {int dummy; } ;
typedef enum emulation_result { ____Placeholder_emulation_result } emulation_result ;


 int EMULATE_DONE ;
 int EMULATE_DO_MMIO ;
 int current ;
 int emulate_instruction (struct kvm_vcpu*,int ) ;
 int guest_state_valid (struct kvm_vcpu*) ;
 int kvm_report_emulation_failure (struct kvm_vcpu*,char*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 scalar_t__ need_resched () ;
 int preempt_disable () ;
 int preempt_enable () ;
 int schedule () ;
 scalar_t__ signal_pending (int ) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;

__attribute__((used)) static void handle_invalid_guest_state(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 enum emulation_result err = EMULATE_DONE;

 local_irq_enable();
 preempt_enable();

 while (!guest_state_valid(vcpu)) {
  err = emulate_instruction(vcpu, 0);

  if (err == EMULATE_DO_MMIO)
   break;

  if (err != EMULATE_DONE) {
   kvm_report_emulation_failure(vcpu, "emulation failure");
   break;
  }

  if (signal_pending(current))
   break;
  if (need_resched())
   schedule();
 }

 preempt_disable();
 local_irq_disable();

 vmx->invalid_state_emulation_result = err;
}
