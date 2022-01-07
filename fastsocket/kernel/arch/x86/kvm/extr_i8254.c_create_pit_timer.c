
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int function; } ;
struct kvm_timer {TYPE_4__ timer; int pending; int kvm; int * t_ops; int period; } ;
struct kvm_kpit_state {int is_periodic; int irq_ack; TYPE_3__* pit; struct kvm_timer pit_timer; } ;
struct TYPE_7__ {TYPE_1__* vpit; } ;
struct kvm {TYPE_2__ arch; } ;
typedef int s64 ;
struct TYPE_8__ {int kvm; int expired; } ;
struct TYPE_6__ {struct kvm_kpit_state pit_state; } ;


 int HRTIMER_MODE_ABS ;
 int KVM_PIT_FREQ ;
 int NSEC_PER_SEC ;
 int atomic_set (int *,int ) ;
 int cancel_work_sync (int *) ;
 int hrtimer_cancel (TYPE_4__*) ;
 int hrtimer_start (TYPE_4__*,int ,int ) ;
 int irqchip_in_kernel (struct kvm*) ;
 int kpit_ops ;
 int ktime_add_ns (int ,int ) ;
 int ktime_get () ;
 int muldiv64 (int ,int ,int ) ;
 int pit_timer_fn ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void create_pit_timer(struct kvm *kvm, u32 val, int is_period)
{
 struct kvm_kpit_state *ps = &kvm->arch.vpit->pit_state;
 struct kvm_timer *pt = &ps->pit_timer;
 s64 interval;

 if (!irqchip_in_kernel(kvm))
  return;

 interval = muldiv64(val, NSEC_PER_SEC, KVM_PIT_FREQ);

 pr_debug("pit: create pit timer, interval is %llu nsec\n", interval);


 hrtimer_cancel(&pt->timer);
 cancel_work_sync(&ps->pit->expired);
 pt->period = interval;
 ps->is_periodic = is_period;

 pt->timer.function = pit_timer_fn;
 pt->t_ops = &kpit_ops;
 pt->kvm = ps->pit->kvm;

 atomic_set(&pt->pending, 0);
 ps->irq_ack = 1;

 hrtimer_start(&pt->timer, ktime_add_ns(ktime_get(), interval),
        HRTIMER_MODE_ABS);
}
