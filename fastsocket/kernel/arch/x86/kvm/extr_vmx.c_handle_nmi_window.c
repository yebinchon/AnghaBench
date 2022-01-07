
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int nmi_window_exits; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;


 int CPU_BASED_VIRTUAL_NMI_PENDING ;
 int CPU_BASED_VM_EXEC_CONTROL ;
 int vmcs_read32 (int ) ;
 int vmcs_write32 (int ,int ) ;

__attribute__((used)) static int handle_nmi_window(struct kvm_vcpu *vcpu)
{
 u32 cpu_based_vm_exec_control;


 cpu_based_vm_exec_control = vmcs_read32(CPU_BASED_VM_EXEC_CONTROL);
 cpu_based_vm_exec_control &= ~CPU_BASED_VIRTUAL_NMI_PENDING;
 vmcs_write32(CPU_BASED_VM_EXEC_CONTROL, cpu_based_vm_exec_control);
 ++vcpu->stat.nmi_window_exits;

 return 1;
}
