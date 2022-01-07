
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long cr0; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int CPU_BASED_CR3_LOAD_EXITING ;
 int CPU_BASED_CR3_STORE_EXITING ;
 int CPU_BASED_VM_EXEC_CONTROL ;
 unsigned long X86_CR0_PG ;
 unsigned long X86_CR0_WP ;
 int is_paging (struct kvm_vcpu*) ;
 int kvm_read_cr4 (struct kvm_vcpu*) ;
 int vmcs_read32 (int ) ;
 int vmcs_write32 (int ,int) ;
 int vmx_set_cr4 (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void ept_update_paging_mode_cr0(unsigned long *hw_cr0,
     unsigned long cr0,
     struct kvm_vcpu *vcpu)
{
 if (!(cr0 & X86_CR0_PG)) {

  vmcs_write32(CPU_BASED_VM_EXEC_CONTROL,
        vmcs_read32(CPU_BASED_VM_EXEC_CONTROL) |
        (CPU_BASED_CR3_LOAD_EXITING |
         CPU_BASED_CR3_STORE_EXITING));
  vcpu->arch.cr0 = cr0;
  vmx_set_cr4(vcpu, kvm_read_cr4(vcpu));
 } else if (!is_paging(vcpu)) {

  vmcs_write32(CPU_BASED_VM_EXEC_CONTROL,
        vmcs_read32(CPU_BASED_VM_EXEC_CONTROL) &
        ~(CPU_BASED_CR3_LOAD_EXITING |
          CPU_BASED_CR3_STORE_EXITING));
  vcpu->arch.cr0 = cr0;
  vmx_set_cr4(vcpu, kvm_read_cr4(vcpu));
 }

 if (!(cr0 & X86_CR0_WP))
  *hw_cr0 &= ~X86_CR0_WP;
}
