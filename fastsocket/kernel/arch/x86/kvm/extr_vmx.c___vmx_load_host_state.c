
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int host_state_reload; } ;
struct TYPE_9__ {TYPE_1__ stat; } ;
struct TYPE_8__ {int gs_sel; int ldt_sel; scalar_t__ gs_ldt_reload_needed; int fs_sel; scalar_t__ fs_reload_needed; scalar_t__ loaded; } ;
struct vcpu_vmx {int msr_host_kernel_gs_base; int msr_guest_kernel_gs_base; TYPE_4__ vcpu; TYPE_3__ host_state; } ;
struct TYPE_7__ {int gs; } ;
struct TYPE_10__ {TYPE_2__ thread; } ;


 int MSR_KERNEL_GS_BASE ;
 TYPE_5__* current ;
 int fs ;
 int gs ;
 scalar_t__ is_long_mode (TYPE_4__*) ;
 int kvm_load_ldt (int ) ;
 int load_gs_index (int ) ;
 int loadsegment (int ,int ) ;
 int rdmsrl (int ,int ) ;
 int reload_tss () ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void __vmx_load_host_state(struct vcpu_vmx *vmx)
{
 if (!vmx->host_state.loaded)
  return;

 ++vmx->vcpu.stat.host_state_reload;
 vmx->host_state.loaded = 0;
 if (vmx->host_state.fs_reload_needed)
  loadsegment(fs, vmx->host_state.fs_sel);
 if (vmx->host_state.gs_ldt_reload_needed) {
  kvm_load_ldt(vmx->host_state.ldt_sel);




  loadsegment(gs, vmx->host_state.gs_sel);

 }
 reload_tss();






}
