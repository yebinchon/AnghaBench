
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int apic_has_pending_timer (struct kvm_vcpu*) ;
 int pit_has_pending_timer (struct kvm_vcpu*) ;

int kvm_cpu_has_pending_timer(struct kvm_vcpu *vcpu)
{
 int ret;

 ret = pit_has_pending_timer(vcpu);
 ret |= apic_has_pending_timer(vcpu);

 return ret;
}
