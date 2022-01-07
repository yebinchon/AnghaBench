
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_PROFILING ;
 int do_leds () ;
 int do_set_rtc () ;
 int do_timer (int) ;
 int get_irq_regs () ;
 int profile_tick (int ) ;
 int update_process_times (int ) ;
 int user_mode (int ) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;
 int xtime_lock ;

void timer_tick(void)
{
 profile_tick(CPU_PROFILING);
 do_leds();
 do_set_rtc();
 write_seqlock(&xtime_lock);
 do_timer(1);
 write_sequnlock(&xtime_lock);

 update_process_times(user_mode(get_irq_regs()));

}
