
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int apic; int hlt_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int hrtimer_cancel (int *) ;
 int kfree (int ) ;

void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu)
{

 hrtimer_cancel(&vcpu->arch.hlt_timer);
 kfree(vcpu->arch.apic);
}
