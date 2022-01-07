
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int halt_wakeup; } ;
struct kvm_vcpu {TYPE_1__ stat; int wq; } ;


 int kvmppc_core_queue_dec (struct kvm_vcpu*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void kvmppc_decrementer_func(unsigned long data)
{
 struct kvm_vcpu *vcpu = (struct kvm_vcpu *)data;

 kvmppc_core_queue_dec(vcpu);

 if (waitqueue_active(&vcpu->wq)) {
  wake_up_interruptible(&vcpu->wq);
  vcpu->stat.halt_wakeup++;
 }
}
