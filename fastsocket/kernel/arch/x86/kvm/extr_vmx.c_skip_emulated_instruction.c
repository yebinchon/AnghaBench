
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int VM_EXIT_INSTRUCTION_LEN ;
 unsigned long kvm_rip_read (struct kvm_vcpu*) ;
 int kvm_rip_write (struct kvm_vcpu*,unsigned long) ;
 scalar_t__ vmcs_read32 (int ) ;
 int vmx_set_interrupt_shadow (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void skip_emulated_instruction(struct kvm_vcpu *vcpu)
{
 unsigned long rip;

 rip = kvm_rip_read(vcpu);
 rip += vmcs_read32(VM_EXIT_INSTRUCTION_LEN);
 kvm_rip_write(vcpu, rip);


 vmx_set_interrupt_shadow(vcpu, 0);
}
