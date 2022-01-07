
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct rb_node {int dummy; } ;
struct mmtimer {int cpu; struct k_itimer* timer; } ;
struct TYPE_4__ {size_t node; unsigned long incr; unsigned long expires; int clock; } ;
struct TYPE_5__ {TYPE_1__ mmtimer; } ;
struct k_itimer {TYPE_2__ it; } ;
struct itimerspec {struct timespec it_interval; struct timespec it_value; } ;
typedef size_t cnodeid_t ;
struct TYPE_6__ {int lock; struct rb_node* next; } ;


 int COMPARATOR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TIMER_ABSTIME ;
 int TIMER_SET ;
 int cnodeid_to_nasid (size_t) ;
 size_t cpu_to_node (int ) ;
 int getnstimeofday (struct timespec*) ;
 struct mmtimer* kmalloc (int,int ) ;
 int mmtimer_add_list (struct mmtimer*) ;
 int mmtimer_disable_int (int ,int ) ;
 int mmtimer_set_next_timer (size_t) ;
 int preempt_disable () ;
 int preempt_enable () ;
 unsigned long rtc_time () ;
 unsigned long sgi_clock_period ;
 int sgi_timer_del (struct k_itimer*) ;
 int sgi_timer_get (struct k_itimer*,struct itimerspec*) ;
 int smp_processor_id () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_3__* timers ;
 unsigned long timespec_to_ns (struct timespec*) ;

__attribute__((used)) static int sgi_timer_set(struct k_itimer *timr, int flags,
 struct itimerspec * new_setting,
 struct itimerspec * old_setting)
{
 unsigned long when, period, irqflags;
 int err = 0;
 cnodeid_t nodeid;
 struct mmtimer *base;
 struct rb_node *n;

 if (old_setting)
  sgi_timer_get(timr, old_setting);

 sgi_timer_del(timr);
 when = timespec_to_ns(&new_setting->it_value);
 period = timespec_to_ns(&new_setting->it_interval);

 if (when == 0)

  return 0;

 base = kmalloc(sizeof(struct mmtimer), GFP_KERNEL);
 if (base == ((void*)0))
  return -ENOMEM;

 if (flags & TIMER_ABSTIME) {
  struct timespec n;
  unsigned long now;

  getnstimeofday(&n);
  now = timespec_to_ns(&n);
  if (when > now)
   when -= now;
  else

   when = 0;
 }






 when = (when + sgi_clock_period - 1) / sgi_clock_period + rtc_time();
 period = (period + sgi_clock_period - 1) / sgi_clock_period;






 preempt_disable();

 nodeid = cpu_to_node(smp_processor_id());


 spin_lock_irqsave(&timers[nodeid].lock, irqflags);

 base->timer = timr;
 base->cpu = smp_processor_id();

 timr->it.mmtimer.clock = TIMER_SET;
 timr->it.mmtimer.node = nodeid;
 timr->it.mmtimer.incr = period;
 timr->it.mmtimer.expires = when;

 n = timers[nodeid].next;


 mmtimer_add_list(base);

 if (timers[nodeid].next == n) {

  spin_unlock_irqrestore(&timers[nodeid].lock, irqflags);
  preempt_enable();
  return err;
 }


 if (n)
  mmtimer_disable_int(cnodeid_to_nasid(nodeid), COMPARATOR);

 mmtimer_set_next_timer(nodeid);


 spin_unlock_irqrestore(&timers[nodeid].lock, irqflags);

 preempt_enable();

 return err;
}
