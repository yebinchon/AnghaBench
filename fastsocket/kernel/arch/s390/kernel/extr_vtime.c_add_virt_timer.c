
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtimer_list {scalar_t__ interval; } ;


 int internal_add_vtimer (struct vtimer_list*) ;
 int prepare_vtimer (struct vtimer_list*) ;

void add_virt_timer(void *new)
{
 struct vtimer_list *timer;

 timer = (struct vtimer_list *)new;
 prepare_vtimer(timer);
 timer->interval = 0;
 internal_add_vtimer(timer);
}
