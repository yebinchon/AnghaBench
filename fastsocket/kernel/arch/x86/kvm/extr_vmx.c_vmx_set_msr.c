
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u64 ;
typedef int u32 ;
struct vcpu_vmx {void* msr_guest_kernel_gs_base; } ;
struct shared_msr_entry {void* data; } ;
struct msr_data {int index; void* data; } ;
struct TYPE_3__ {void* pat; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int vmentry_ctrl; } ;


 int GUEST_FS_BASE ;
 int GUEST_GS_BASE ;
 int GUEST_IA32_PAT ;
 int GUEST_SYSENTER_CS ;
 int GUEST_SYSENTER_EIP ;
 int GUEST_SYSENTER_ESP ;
 int VM_ENTRY_LOAD_IA32_PAT ;
 struct shared_msr_entry* find_msr_entry (struct vcpu_vmx*,int) ;
 int kvm_set_msr_common (struct kvm_vcpu*,struct msr_data*) ;
 int kvm_write_tsc (struct kvm_vcpu*,struct msr_data*) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 TYPE_2__ vmcs_config ;
 int vmcs_write32 (int ,void*) ;
 int vmcs_write64 (int ,void*) ;
 int vmcs_writel (int ,void*) ;
 int vmx_load_host_state (struct vcpu_vmx*) ;

__attribute__((used)) static int vmx_set_msr(struct kvm_vcpu *vcpu, struct msr_data *msr_info)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 struct shared_msr_entry *msr;
 int ret = 0;
 u32 msr_index = msr_info->index;
 u64 data = msr_info->data;

 switch (msr_index) {
 case 136:
  vmx_load_host_state(vmx);
  ret = kvm_set_msr_common(vcpu, msr_info);
  break;
 case 132:
  vmcs_write32(GUEST_SYSENTER_CS, data);
  break;
 case 131:
  vmcs_writel(GUEST_SYSENTER_EIP, data);
  break;
 case 130:
  vmcs_writel(GUEST_SYSENTER_ESP, data);
  break;
 case 129:
  kvm_write_tsc(vcpu, msr_info);
  break;
 case 133:
  if (vmcs_config.vmentry_ctrl & VM_ENTRY_LOAD_IA32_PAT) {
   vmcs_write64(GUEST_IA32_PAT, data);
   vcpu->arch.pat = data;
   break;
  }

 default:
  msr = find_msr_entry(vmx, msr_index);
  if (msr) {
   vmx_load_host_state(vmx);
   msr->data = data;
   break;
  }
  ret = kvm_set_msr_common(vcpu, msr_info);
 }

 return ret;
}
