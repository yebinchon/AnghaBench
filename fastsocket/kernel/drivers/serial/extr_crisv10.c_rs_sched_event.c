
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e100_serial {int event; int work; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void rs_sched_event(struct e100_serial *info, int event)
{
 if (info->event & (1 << event))
  return;
 info->event |= 1 << event;
 schedule_work(&info->work);
}
