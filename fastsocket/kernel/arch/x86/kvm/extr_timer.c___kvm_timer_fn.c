
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct kvm_vcpu {int requests; int wq; } ;
struct kvm_timer {int period; int timer; TYPE_1__* t_ops; int pending; scalar_t__ reinject; } ;
struct TYPE_2__ {scalar_t__ (* is_periodic ) (struct kvm_timer*) ;} ;


 int KVM_REQ_PENDING_TIMER ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int hrtimer_add_expires_ns (int *,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ stub1 (struct kvm_timer*) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int __kvm_timer_fn(struct kvm_vcpu *vcpu, struct kvm_timer *ktimer)
{
 int restart_timer = 0;
 wait_queue_head_t *q = &vcpu->wq;






 if (ktimer->reinject || !atomic_read(&ktimer->pending)) {
  atomic_inc(&ktimer->pending);

  set_bit(KVM_REQ_PENDING_TIMER, &vcpu->requests);
 }

 if (waitqueue_active(q))
  wake_up_interruptible(q);

 if (ktimer->t_ops->is_periodic(ktimer)) {
  hrtimer_add_expires_ns(&ktimer->timer, ktimer->period);
  restart_timer = 1;
 }

 return restart_timer;
}
