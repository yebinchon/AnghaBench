
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;


 int CPU_BASED_VIRTUAL_NMI_PENDING ;
 int CPU_BASED_VM_EXEC_CONTROL ;
 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_INTR_STATE_STI ;
 int cpu_has_virtual_nmis () ;
 int enable_irq_window (struct kvm_vcpu*) ;
 int vmcs_read32 (int ) ;
 int vmcs_write32 (int ,int) ;

__attribute__((used)) static void enable_nmi_window(struct kvm_vcpu *vcpu)
{
 u32 cpu_based_vm_exec_control;

 if (!cpu_has_virtual_nmis()) {
  enable_irq_window(vcpu);
  return;
 }

 if (vmcs_read32(GUEST_INTERRUPTIBILITY_INFO) & GUEST_INTR_STATE_STI) {
  enable_irq_window(vcpu);
  return;
 }
 cpu_based_vm_exec_control = vmcs_read32(CPU_BASED_VM_EXEC_CONTROL);
 cpu_based_vm_exec_control |= CPU_BASED_VIRTUAL_NMI_PENDING;
 vmcs_write32(CPU_BASED_VM_EXEC_CONTROL, cpu_based_vm_exec_control);
}
