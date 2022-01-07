
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct as_data {scalar_t__ antic_status; int * next_rq; } ;


 scalar_t__ ANTIC_WAIT_NEXT ;
 scalar_t__ ANTIC_WAIT_REQ ;
 int as_antic_stop (struct as_data*) ;
 scalar_t__ as_can_break_anticipation (struct as_data*,struct request*) ;
 int as_choose_req (struct as_data*,struct request*,int ) ;
 int rq_is_sync (struct request*) ;

__attribute__((used)) static void as_update_rq(struct as_data *ad, struct request *rq)
{
 const int data_dir = rq_is_sync(rq);


 ad->next_rq[data_dir] = as_choose_req(ad, rq, ad->next_rq[data_dir]);






 if (ad->antic_status == ANTIC_WAIT_REQ
   || ad->antic_status == ANTIC_WAIT_NEXT) {
  if (as_can_break_anticipation(ad, rq))
   as_antic_stop(ad);
 }
}
