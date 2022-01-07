
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct cfq_queue {struct request* next_rq; int sort_list; int * queued; struct cfq_data* cfqd; } ;
struct cfq_data {int last_position; } ;


 int BUG_ON (int) ;
 struct cfq_queue* RQ_CFQQ (struct request*) ;
 int cfq_add_cfqq_rr (struct cfq_data*,struct cfq_queue*) ;
 int cfq_cfqq_on_rr (struct cfq_queue*) ;
 struct request* cfq_choose_req (struct cfq_data*,struct request*,struct request*,int ) ;
 int cfq_prio_tree_add (struct cfq_data*,struct cfq_queue*) ;
 int elv_rb_add (int *,struct request*) ;
 size_t rq_is_sync (struct request*) ;

__attribute__((used)) static void cfq_add_rq_rb(struct request *rq)
{
 struct cfq_queue *cfqq = RQ_CFQQ(rq);
 struct cfq_data *cfqd = cfqq->cfqd;
 struct request *prev;

 cfqq->queued[rq_is_sync(rq)]++;

 elv_rb_add(&cfqq->sort_list, rq);

 if (!cfq_cfqq_on_rr(cfqq))
  cfq_add_cfqq_rr(cfqd, cfqq);




 prev = cfqq->next_rq;
 cfqq->next_rq = cfq_choose_req(cfqd, cfqq->next_rq, rq, cfqd->last_position);




 if (prev != cfqq->next_rq)
  cfq_prio_tree_add(cfqd, cfqq);

 BUG_ON(!cfqq->next_rq);
}
