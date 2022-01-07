
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* state; } ;
struct TYPE_6__ {TYPE_2__ guest_fpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct kvm_fpu {int xmm; int last_dp; int last_ip; int last_opcode; int ftwx; int fsw; int fcw; int fpr; } ;
struct i387_fxsave_struct {int xmm_space; int rdp; int rip; int fop; int twd; int swd; int cwd; int st_space; } ;
struct TYPE_4__ {struct i387_fxsave_struct fxsave; } ;


 int memcpy (int ,int ,int) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_get_fpu(struct kvm_vcpu *vcpu, struct kvm_fpu *fpu)
{
 struct i387_fxsave_struct *fxsave =
   &vcpu->arch.guest_fpu.state->fxsave;

 vcpu_load(vcpu);

 memcpy(fpu->fpr, fxsave->st_space, 128);
 fpu->fcw = fxsave->cwd;
 fpu->fsw = fxsave->swd;
 fpu->ftwx = fxsave->twd;
 fpu->last_opcode = fxsave->fop;
 fpu->last_ip = fxsave->rip;
 fpu->last_dp = fxsave->rdp;
 memcpy(fpu->xmm, fxsave->xmm_space, sizeof fxsave->xmm_space);

 vcpu_put(vcpu);

 return 0;
}
