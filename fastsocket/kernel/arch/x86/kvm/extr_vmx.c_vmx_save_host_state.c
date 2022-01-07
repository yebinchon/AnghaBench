
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int loaded; int ldt_sel; int gs_ldt_reload_needed; int fs_sel; int fs_reload_needed; int gs_sel; } ;
struct vcpu_vmx {int save_nmsrs; TYPE_2__* guest_msrs; int msr_guest_kernel_gs_base; int msr_host_kernel_gs_base; int vcpu; TYPE_1__ host_state; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int mask; int data; int index; } ;


 int HOST_FS_BASE ;
 int HOST_FS_SELECTOR ;
 int HOST_GS_BASE ;
 int HOST_GS_SELECTOR ;
 int MSR_FS_BASE ;
 int MSR_GS_BASE ;
 int MSR_KERNEL_GS_BASE ;
 int fs ;
 int gs ;
 scalar_t__ is_long_mode (int *) ;
 int kvm_read_ldt () ;
 int kvm_set_shared_msr (int ,int ,int ) ;
 int rdmsrl (int ,int ) ;
 int read_msr (int ) ;
 int savesegment (int ,int) ;
 int segment_base (int) ;
 struct vcpu_vmx* to_vmx (struct kvm_vcpu*) ;
 int vmcs_write16 (int ,int) ;
 int vmcs_writel (int ,int ) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void vmx_save_host_state(struct kvm_vcpu *vcpu)
{
 struct vcpu_vmx *vmx = to_vmx(vcpu);
 int i;

 if (vmx->host_state.loaded)
  return;

 vmx->host_state.loaded = 1;




 vmx->host_state.ldt_sel = kvm_read_ldt();
 vmx->host_state.gs_ldt_reload_needed = vmx->host_state.ldt_sel;
 savesegment(fs, vmx->host_state.fs_sel);
 if (!(vmx->host_state.fs_sel & 7)) {
  vmcs_write16(HOST_FS_SELECTOR, vmx->host_state.fs_sel);
  vmx->host_state.fs_reload_needed = 0;
 } else {
  vmcs_write16(HOST_FS_SELECTOR, 0);
  vmx->host_state.fs_reload_needed = 1;
 }
 savesegment(gs, vmx->host_state.gs_sel);
 if (!(vmx->host_state.gs_sel & 7))
  vmcs_write16(HOST_GS_SELECTOR, vmx->host_state.gs_sel);
 else {
  vmcs_write16(HOST_GS_SELECTOR, 0);
  vmx->host_state.gs_ldt_reload_needed = 1;
 }





 vmcs_writel(HOST_FS_BASE, segment_base(vmx->host_state.fs_sel));
 vmcs_writel(HOST_GS_BASE, segment_base(vmx->host_state.gs_sel));
 for (i = 0; i < vmx->save_nmsrs; ++i)
  kvm_set_shared_msr(vmx->guest_msrs[i].index,
       vmx->guest_msrs[i].data,
       vmx->guest_msrs[i].mask);
}
