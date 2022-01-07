
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ period; int timer; } ;
struct kvm_kpit_state {TYPE_3__ pit_timer; } ;
struct TYPE_5__ {TYPE_1__* vpit; } ;
struct kvm {TYPE_2__ arch; } ;
typedef scalar_t__ s64 ;
typedef int ktime_t ;
struct TYPE_4__ {struct kvm_kpit_state pit_state; } ;


 int hrtimer_get_remaining (int *) ;
 scalar_t__ ktime_to_ns (int ) ;
 scalar_t__ mod_64 (scalar_t__,scalar_t__) ;

__attribute__((used)) static s64 __kpit_elapsed(struct kvm *kvm)
{
 s64 elapsed;
 ktime_t remaining;
 struct kvm_kpit_state *ps = &kvm->arch.vpit->pit_state;

 if (!ps->pit_timer.period)
  return 0;
 remaining = hrtimer_get_remaining(&ps->pit_timer.timer);
 elapsed = ps->pit_timer.period - ktime_to_ns(remaining);
 elapsed = mod_64(elapsed, ps->pit_timer.period);

 return elapsed;
}
