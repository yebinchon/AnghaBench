
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int guest_gprs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_regs {int gprs; } ;


 int memcpy (int *,int *,int) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
 vcpu_load(vcpu);
 memcpy(&vcpu->arch.guest_gprs, &regs->gprs, sizeof(regs->gprs));
 vcpu_put(vcpu);
 return 0;
}
