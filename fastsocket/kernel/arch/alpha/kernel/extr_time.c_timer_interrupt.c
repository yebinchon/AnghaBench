
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int irqreturn_t ;
typedef void* __u32 ;
struct TYPE_4__ {void* last_time; unsigned long scaled_ticks_per_cycle; unsigned long partial_tick; scalar_t__ last_rtc_update; } ;
struct TYPE_3__ {scalar_t__ tv_sec; int tv_nsec; } ;


 int CPU_PROFILING ;
 unsigned long FIX_SHIFT ;
 int IRQ_HANDLED ;
 scalar_t__ TICK_SIZE ;
 int do_timer (long) ;
 int get_irq_regs () ;
 scalar_t__ ntp_synced () ;
 int profile_tick (int ) ;
 void* rpcc () ;
 int set_rtc_mmss (scalar_t__) ;
 TYPE_2__ state ;
 int update_process_times (int ) ;
 int user_mode (int ) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;
 TYPE_1__ xtime ;
 int xtime_lock ;

irqreturn_t timer_interrupt(int irq, void *dev)
{
 unsigned long delta;
 __u32 now;
 long nticks;



 profile_tick(CPU_PROFILING);


 write_seqlock(&xtime_lock);






 now = rpcc();
 delta = now - state.last_time;
 state.last_time = now;
 delta = delta * state.scaled_ticks_per_cycle + state.partial_tick;
 state.partial_tick = delta & ((1UL << FIX_SHIFT) - 1);
 nticks = delta >> FIX_SHIFT;

 if (nticks)
  do_timer(nticks);






 if (ntp_synced()
     && xtime.tv_sec > state.last_rtc_update + 660
     && xtime.tv_nsec >= 500000 - ((unsigned) TICK_SIZE) / 2
     && xtime.tv_nsec <= 500000 + ((unsigned) TICK_SIZE) / 2) {
  int tmp = set_rtc_mmss(xtime.tv_sec);
  state.last_rtc_update = xtime.tv_sec - (tmp ? 600 : 0);
 }

 write_sequnlock(&xtime_lock);


 while (nticks--)
  update_process_times(user_mode(get_irq_regs()));


 return IRQ_HANDLED;
}
