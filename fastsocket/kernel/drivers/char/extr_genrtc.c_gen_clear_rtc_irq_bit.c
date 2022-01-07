
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int del_timer_sync (int *) ;
 int gen_rtc_lock ;
 scalar_t__ irq_active ;
 int schedule () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stask_active ;
 int stop_rtc_timers ;
 int timer_task ;
 scalar_t__ ttask_active ;

__attribute__((used)) static inline void gen_clear_rtc_irq_bit(unsigned char bit)
{
}
