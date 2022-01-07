
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_5__ {int shadow_efer; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct vcpu_vmx {int msr_offset_efer; TYPE_1__* guest_msrs; TYPE_3__ vcpu; } ;
struct TYPE_4__ {int data; int mask; } ;


 int EFER_LMA ;
 int EFER_LME ;
 int EFER_NX ;
 int EFER_SCE ;
 int host_efer ;

__attribute__((used)) static bool update_transition_efer(struct vcpu_vmx *vmx)
{
 int efer_offset = vmx->msr_offset_efer;
 u64 guest_efer;
 u64 ignore_bits;

 if (efer_offset < 0)
  return 0;
 guest_efer = vmx->vcpu.arch.shadow_efer;





 ignore_bits = EFER_NX | EFER_SCE;






 guest_efer &= ~ignore_bits;
 guest_efer |= host_efer & ignore_bits;
 vmx->guest_msrs[efer_offset].data = guest_efer;
 vmx->guest_msrs[efer_offset].mask = ~ignore_bits;
 return 1;
}
