
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as_data {scalar_t__ antic_status; scalar_t__ ioc_finished; int io_context; } ;


 scalar_t__ ANTIC_FINISHED ;
 scalar_t__ ANTIC_OFF ;
 scalar_t__ ANTIC_WAIT_REQ ;
 int BUG_ON (int) ;
 int as_antic_waitnext (struct as_data*) ;

__attribute__((used)) static void as_antic_waitreq(struct as_data *ad)
{
 BUG_ON(ad->antic_status == ANTIC_FINISHED);
 if (ad->antic_status == ANTIC_OFF) {
  if (!ad->io_context || ad->ioc_finished)
   as_antic_waitnext(ad);
  else
   ad->antic_status = ANTIC_WAIT_REQ;
 }
}
