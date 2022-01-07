
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fpc; int fprs; } ;
struct TYPE_4__ {TYPE_1__ guest_fpregs; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_fpu {int fpc; int fprs; } ;


 int memcpy (int *,int *,int) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_fpu(struct kvm_vcpu *vcpu, struct kvm_fpu *fpu)
{
 vcpu_load(vcpu);
 memcpy(&vcpu->arch.guest_fpregs.fprs, &fpu->fprs, sizeof(fpu->fprs));
 vcpu->arch.guest_fpregs.fpc = fpu->fpc;
 vcpu_put(vcpu);
 return 0;
}
