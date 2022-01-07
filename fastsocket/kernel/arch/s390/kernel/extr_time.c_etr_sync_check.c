
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ es; } ;


 int ETR_EVENT_SYNC_CHECK ;
 int disable_sync_clock (int *) ;
 TYPE_1__ etr_eacr ;
 int etr_events ;
 int etr_setr (TYPE_1__*) ;
 int etr_work ;
 int queue_work (int ,int *) ;
 int test_and_set_bit (int ,int *) ;
 int time_sync_wq ;

void etr_sync_check(void)
{
 if (!etr_eacr.es)
  return;
 disable_sync_clock(((void*)0));
 if (!test_and_set_bit(ETR_EVENT_SYNC_CHECK, &etr_events)) {
  etr_eacr.es = 0;
  etr_setr(&etr_eacr);
  queue_work(time_sync_wq, &etr_work);
 }
}
