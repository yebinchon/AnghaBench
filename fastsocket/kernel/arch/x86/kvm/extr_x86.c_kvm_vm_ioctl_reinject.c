
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kvm_reinject_control {int pit_reinject; } ;
struct TYPE_8__ {TYPE_3__* vpit; } ;
struct kvm {TYPE_4__ arch; } ;
struct TYPE_5__ {int reinject; } ;
struct TYPE_6__ {int lock; TYPE_1__ pit_timer; } ;
struct TYPE_7__ {TYPE_2__ pit_state; } ;


 int ENXIO ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvm_vm_ioctl_reinject(struct kvm *kvm,
     struct kvm_reinject_control *control)
{
 if (!kvm->arch.vpit)
  return -ENXIO;
 mutex_lock(&kvm->arch.vpit->pit_state.lock);
 kvm->arch.vpit->pit_state.pit_timer.reinject = control->pit_reinject;
 mutex_unlock(&kvm->arch.vpit->pit_state.lock);
 return 0;
}
