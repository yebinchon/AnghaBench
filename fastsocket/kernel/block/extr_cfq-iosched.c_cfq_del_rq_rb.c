
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct cfq_queue {int * p_root; int p_node; int sort_list; int * queued; } ;


 int BUG_ON (int) ;
 scalar_t__ RB_EMPTY_ROOT (int *) ;
 struct cfq_queue* RQ_CFQQ (struct request*) ;
 scalar_t__ cfq_cfqq_on_rr (struct cfq_queue*) ;
 int elv_rb_del (int *,struct request*) ;
 int rb_erase (int *,int *) ;
 int rq_is_sync (struct request*) ;

__attribute__((used)) static void cfq_del_rq_rb(struct request *rq)
{
 struct cfq_queue *cfqq = RQ_CFQQ(rq);
 const int sync = rq_is_sync(rq);

 BUG_ON(!cfqq->queued[sync]);
 cfqq->queued[sync]--;

 elv_rb_del(&cfqq->sort_list, rq);

 if (cfq_cfqq_on_rr(cfqq) && RB_EMPTY_ROOT(&cfqq->sort_list)) {





  if (cfqq->p_root) {
   rb_erase(&cfqq->p_node, cfqq->p_root);
   cfqq->p_root = ((void*)0);
  }
 }
}
