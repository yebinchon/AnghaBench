
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {scalar_t__ ref; int* allocated; struct cfq_group* orig_cfqg; struct cfq_group* cfqg; int sort_list; struct cfq_data* cfqd; } ;
struct cfq_group {int dummy; } ;
struct cfq_data {struct cfq_queue* active_queue; } ;


 int BUG_ON (int) ;
 size_t READ ;
 size_t WRITE ;
 int __cfq_slice_expired (struct cfq_data*,struct cfq_queue*,int ) ;
 int cfq_cfqq_on_rr (struct cfq_queue*) ;
 int cfq_log_cfqq (struct cfq_data*,struct cfq_queue*,char*) ;
 int cfq_pool ;
 int cfq_put_cfqg (struct cfq_group*) ;
 int cfq_schedule_dispatch (struct cfq_data*) ;
 int kmem_cache_free (int ,struct cfq_queue*) ;
 int rb_first (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void cfq_put_queue(struct cfq_queue *cfqq)
{
 struct cfq_data *cfqd = cfqq->cfqd;
 struct cfq_group *cfqg, *orig_cfqg;

 BUG_ON(cfqq->ref <= 0);

 cfqq->ref--;
 if (cfqq->ref)
  return;

 cfq_log_cfqq(cfqd, cfqq, "put_queue");
 BUG_ON(rb_first(&cfqq->sort_list));
 BUG_ON(cfqq->allocated[READ] + cfqq->allocated[WRITE]);
 cfqg = cfqq->cfqg;
 orig_cfqg = cfqq->orig_cfqg;

 if (unlikely(cfqd->active_queue == cfqq)) {
  __cfq_slice_expired(cfqd, cfqq, 0);
  cfq_schedule_dispatch(cfqd);
 }

 BUG_ON(cfq_cfqq_on_rr(cfqq));
 kmem_cache_free(cfq_pool, cfqq);
 cfq_put_cfqg(cfqg);
 if (orig_cfqg)
  cfq_put_cfqg(orig_cfqg);
}
