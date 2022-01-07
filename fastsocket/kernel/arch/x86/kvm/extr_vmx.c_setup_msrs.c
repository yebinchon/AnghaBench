
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shadow_efer; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;
struct vcpu_vmx {int msr_offset_efer; int save_nmsrs; TYPE_2__ vcpu; } ;


 int EFER_SCE ;
 int MSR_BITMAP ;
 int MSR_CSTAR ;
 int MSR_EFER ;
 int MSR_K6_STAR ;
 int MSR_LSTAR ;
 int MSR_SYSCALL_MASK ;
 int __find_msr_index (struct vcpu_vmx*,int ) ;
 int __pa (unsigned long*) ;
 scalar_t__ cpu_has_vmx_msr_bitmap () ;
 scalar_t__ is_long_mode (TYPE_2__*) ;
 int move_msr_up (struct vcpu_vmx*,int,int ) ;
 scalar_t__ update_transition_efer (struct vcpu_vmx*) ;
 int vmcs_write64 (int ,int ) ;
 int vmx_load_host_state (struct vcpu_vmx*) ;
 unsigned long* vmx_msr_bitmap_legacy ;
 unsigned long* vmx_msr_bitmap_longmode ;

__attribute__((used)) static void setup_msrs(struct vcpu_vmx *vmx)
{
 int save_nmsrs, index;
 unsigned long *msr_bitmap;

 vmx_load_host_state(vmx);
 save_nmsrs = 0;
 vmx->msr_offset_efer = index = __find_msr_index(vmx, MSR_EFER);
 if (index >= 0 && update_transition_efer(vmx))
  move_msr_up(vmx, index, save_nmsrs++);

 vmx->save_nmsrs = save_nmsrs;

 if (cpu_has_vmx_msr_bitmap()) {
  if (is_long_mode(&vmx->vcpu))
   msr_bitmap = vmx_msr_bitmap_longmode;
  else
   msr_bitmap = vmx_msr_bitmap_legacy;

  vmcs_write64(MSR_BITMAP, __pa(msr_bitmap));
 }
}
