
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ gen_rtc_irq_data ;
 int gen_rtc_lock ;
 int genrtc_task ;
 int genrtc_troutine ;
 int get_rtc_ss () ;
 int init_timer (int *) ;
 int irq_active ;
 scalar_t__ lostint ;
 int oldsecs ;
 scalar_t__ schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stask_active ;
 scalar_t__ stop_rtc_timers ;
 int timer_task ;

__attribute__((used)) static inline int gen_set_rtc_irq_bit(unsigned char bit)
{
 return -EINVAL;

}
