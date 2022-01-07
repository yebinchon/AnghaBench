
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as_data {int antic_status; int antic_work; int q; int antic_timer; } ;


 int ANTIC_FINISHED ;
 int ANTIC_WAIT_NEXT ;
 int ANTIC_WAIT_REQ ;
 int del_timer (int *) ;
 int kblockd_schedule_work (int ,int *) ;

__attribute__((used)) static void as_antic_stop(struct as_data *ad)
{
 int status = ad->antic_status;

 if (status == ANTIC_WAIT_REQ || status == ANTIC_WAIT_NEXT) {
  if (status == ANTIC_WAIT_NEXT)
   del_timer(&ad->antic_timer);
  ad->antic_status = ANTIC_FINISHED;

  kblockd_schedule_work(ad->q, &ad->antic_work);
 }
}
