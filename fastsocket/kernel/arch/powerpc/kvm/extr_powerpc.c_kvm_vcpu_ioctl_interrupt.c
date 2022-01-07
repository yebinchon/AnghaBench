
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int halt_wakeup; } ;
struct kvm_vcpu {TYPE_1__ stat; int wq; } ;
struct kvm_interrupt {int dummy; } ;


 int kvmppc_core_queue_external (struct kvm_vcpu*,struct kvm_interrupt*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

int kvm_vcpu_ioctl_interrupt(struct kvm_vcpu *vcpu, struct kvm_interrupt *irq)
{
 kvmppc_core_queue_external(vcpu, irq);

 if (waitqueue_active(&vcpu->wq)) {
  wake_up_interruptible(&vcpu->wq);
  vcpu->stat.halt_wakeup++;
 }

 return 0;
}
