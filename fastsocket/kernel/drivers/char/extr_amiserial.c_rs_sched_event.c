
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_struct {int event; int tlet; } ;


 int tasklet_schedule (int *) ;

__attribute__((used)) static void rs_sched_event(struct async_struct *info,
      int event)
{
 info->event |= 1 << event;
 tasklet_schedule(&info->tlet);
}
