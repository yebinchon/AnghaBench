
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int irqreturn_t ;
struct TYPE_2__ {long tv_sec; int tv_nsec; } ;


 int CPU_PROFILING ;
 int IRQ_HANDLED ;
 scalar_t__ TICK_SIZE ;
 int __set_LEDS (unsigned short) ;
 int do_timer (int) ;
 int get_irq_regs () ;
 scalar_t__ ntp_synced () ;
 int profile_tick (int ) ;
 scalar_t__ set_rtc_mmss (long) ;
 int update_process_times (int ) ;
 int user_mode (int ) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;
 TYPE_1__ xtime ;
 int xtime_lock ;

__attribute__((used)) static irqreturn_t timer_interrupt(int irq, void *dummy)
{

 static long last_rtc_update = 0;

 profile_tick(CPU_PROFILING);







 write_seqlock(&xtime_lock);

 do_timer(1);






 if (ntp_synced() &&
     xtime.tv_sec > last_rtc_update + 660 &&
     (xtime.tv_nsec / 1000) >= 500000 - ((unsigned) TICK_SIZE) / 2 &&
     (xtime.tv_nsec / 1000) <= 500000 + ((unsigned) TICK_SIZE) / 2
     ) {
  if (set_rtc_mmss(xtime.tv_sec) == 0)
   last_rtc_update = xtime.tv_sec;
  else
   last_rtc_update = xtime.tv_sec - 600;
 }







 write_sequnlock(&xtime_lock);

 update_process_times(user_mode(get_irq_regs()));

 return IRQ_HANDLED;
}
