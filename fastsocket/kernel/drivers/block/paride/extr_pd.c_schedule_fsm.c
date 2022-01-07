
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fsm_tq ;
 scalar_t__ nice ;
 int schedule_delayed_work (int *,scalar_t__) ;

__attribute__((used)) static void schedule_fsm(void)
{
 if (!nice)
  schedule_delayed_work(&fsm_tq, 0);
 else
  schedule_delayed_work(&fsm_tq, nice-1);
}
