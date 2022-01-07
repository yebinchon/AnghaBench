
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int irq_window_exits; } ;
struct kvm_vcpu {TYPE_2__* run; int kvm; TYPE_1__ stat; } ;
struct TYPE_4__ {int exit_reason; scalar_t__ request_interrupt_window; } ;


 int CPU_BASED_VIRTUAL_INTR_PENDING ;
 int CPU_BASED_VM_EXEC_CONTROL ;
 int KVM_EXIT_IRQ_WINDOW_OPEN ;
 int irqchip_in_kernel (int ) ;
 int kvm_cpu_has_interrupt (struct kvm_vcpu*) ;
 int vmcs_read32 (int ) ;
 int vmcs_write32 (int ,int ) ;

__attribute__((used)) static int handle_interrupt_window(struct kvm_vcpu *vcpu)
{
 u32 cpu_based_vm_exec_control;


 cpu_based_vm_exec_control = vmcs_read32(CPU_BASED_VM_EXEC_CONTROL);
 cpu_based_vm_exec_control &= ~CPU_BASED_VIRTUAL_INTR_PENDING;
 vmcs_write32(CPU_BASED_VM_EXEC_CONTROL, cpu_based_vm_exec_control);

 ++vcpu->stat.irq_window_exits;





 if (!irqchip_in_kernel(vcpu->kvm) &&
     vcpu->run->request_interrupt_window &&
     !kvm_cpu_has_interrupt(vcpu)) {
  vcpu->run->exit_reason = KVM_EXIT_IRQ_WINDOW_OPEN;
  return 0;
 }
 return 1;
}
