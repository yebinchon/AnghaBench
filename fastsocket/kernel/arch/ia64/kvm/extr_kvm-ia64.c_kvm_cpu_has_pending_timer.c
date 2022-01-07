
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer_fired; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



int kvm_cpu_has_pending_timer(struct kvm_vcpu *vcpu)
{
 return vcpu->arch.timer_fired;
}
