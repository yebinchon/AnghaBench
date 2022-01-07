
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* apic; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_lapic_state {int regs; } ;
struct TYPE_3__ {int regs; } ;


 int kvm_apic_post_state_restore (struct kvm_vcpu*) ;
 int memcpy (int ,int ,int) ;
 int update_cr8_intercept (struct kvm_vcpu*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_vcpu_ioctl_set_lapic(struct kvm_vcpu *vcpu,
        struct kvm_lapic_state *s)
{
 vcpu_load(vcpu);
 memcpy(vcpu->arch.apic->regs, s->regs, sizeof *s);
 kvm_apic_post_state_restore(vcpu);
 update_cr8_intercept(vcpu);
 vcpu_put(vcpu);

 return 0;
}
