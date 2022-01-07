
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtimer_list {int expires; int interval; } ;


 int internal_add_vtimer (struct vtimer_list*) ;
 int prepare_vtimer (struct vtimer_list*) ;

void add_virt_timer_periodic(void *new)
{
 struct vtimer_list *timer;

 timer = (struct vtimer_list *)new;
 prepare_vtimer(timer);
 timer->interval = timer->expires;
 internal_add_vtimer(timer);
}
