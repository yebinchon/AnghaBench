
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long data; scalar_t__ expires; int function; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int spu_evnt_swap ;
 TYPE_1__ timer_spu_event_swap ;

__attribute__((used)) static void start_spu_event_swap(void)
{
 init_timer(&timer_spu_event_swap);
 timer_spu_event_swap.function = spu_evnt_swap;
 timer_spu_event_swap.data = 0UL;
 timer_spu_event_swap.expires = jiffies + HZ / 25;
 add_timer(&timer_spu_event_swap);
}
