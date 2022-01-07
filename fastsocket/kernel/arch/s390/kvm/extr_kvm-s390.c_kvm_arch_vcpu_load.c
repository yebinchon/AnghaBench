
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fpc; } ;
struct TYPE_3__ {int guest_acrs; TYPE_2__ guest_fpregs; int host_acrs; int host_fpregs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int FPC_VALID_MASK ;
 int restore_access_regs (int ) ;
 int restore_fp_regs (TYPE_2__*) ;
 int save_access_regs (int ) ;
 int save_fp_regs (int *) ;

void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
{
 save_fp_regs(&vcpu->arch.host_fpregs);
 save_access_regs(vcpu->arch.host_acrs);
 vcpu->arch.guest_fpregs.fpc &= FPC_VALID_MASK;
 restore_fp_regs(&vcpu->arch.guest_fpregs);
 restore_access_regs(vcpu->arch.guest_acrs);
}
