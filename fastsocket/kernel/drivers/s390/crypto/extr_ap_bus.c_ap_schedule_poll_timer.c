
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ap_schedule_poll_timer () ;
 scalar_t__ ap_using_interrupts () ;

__attribute__((used)) static inline void ap_schedule_poll_timer(void)
{
 if (ap_using_interrupts())
  return;
 __ap_schedule_poll_timer();
}
