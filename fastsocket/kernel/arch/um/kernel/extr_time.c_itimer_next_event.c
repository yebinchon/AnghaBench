
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int timer_one_shot (unsigned long) ;

__attribute__((used)) static int itimer_next_event(unsigned long delta,
        struct clock_event_device *evt)
{
 return timer_one_shot(delta + 1);
}
