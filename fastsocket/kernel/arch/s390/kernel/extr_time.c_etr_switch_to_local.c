
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sl; scalar_t__ es; } ;


 int ETR_EVENT_SWITCH_LOCAL ;
 int disable_sync_clock (int *) ;
 TYPE_1__ etr_eacr ;
 int etr_events ;
 int etr_setr (TYPE_1__*) ;
 int etr_work ;
 int queue_work (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int time_sync_wq ;

void etr_switch_to_local(void)
{
 if (!etr_eacr.sl)
  return;
 disable_sync_clock(((void*)0));
 if (!test_and_set_bit(ETR_EVENT_SWITCH_LOCAL, &etr_events)) {
  etr_eacr.es = etr_eacr.sl = 0;
  etr_setr(&etr_eacr);
  queue_work(time_sync_wq, &etr_work);
 }
}
