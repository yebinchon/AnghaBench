
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct kvm_xsave {int * region; } ;
struct TYPE_4__ {TYPE_2__* state; } ;
struct TYPE_6__ {TYPE_1__ guest_fpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct i387_fxsave_struct {int dummy; } ;
struct TYPE_5__ {int fxsave; int xsave; } ;


 int XSAVE_HDR_OFFSET ;
 int XSTATE_FPSSE ;
 scalar_t__ cpu_has_xsave ;
 int memcpy (int *,int *,int) ;
 int xstate_size ;

__attribute__((used)) static void kvm_vcpu_ioctl_x86_get_xsave(struct kvm_vcpu *vcpu,
      struct kvm_xsave *guest_xsave)
{
 if (cpu_has_xsave)
  memcpy(guest_xsave->region,
   &vcpu->arch.guest_fpu.state->xsave,
   xstate_size);
 else {
  memcpy(guest_xsave->region,
   &vcpu->arch.guest_fpu.state->fxsave,
   sizeof(struct i387_fxsave_struct));
  *(u64 *)&guest_xsave->region[XSAVE_HDR_OFFSET / sizeof(u32)] =
   XSTATE_FPSSE;
 }
}
