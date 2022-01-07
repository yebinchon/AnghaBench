
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int host_acrs; int host_fpregs; int guest_acrs; int guest_fpregs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int restore_access_regs (int ) ;
 int restore_fp_regs (int *) ;
 int save_access_regs (int ) ;
 int save_fp_regs (int *) ;

void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu)
{
 save_fp_regs(&vcpu->arch.guest_fpregs);
 save_access_regs(vcpu->arch.guest_acrs);
 restore_fp_regs(&vcpu->arch.host_fpregs);
 restore_access_regs(vcpu->arch.host_acrs);
}
