
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_rb_root {int count; } ;
struct cfq_queue {struct cfq_rb_root* service_tree; } ;
struct cfq_data {scalar_t__ cfq_slice_idle; scalar_t__ hw_tag; int queue; } ;
typedef enum wl_prio_t { ____Placeholder_wl_prio_t } wl_prio_t ;


 int BUG_ON (int) ;
 int IDLE_WORKLOAD ;
 scalar_t__ blk_queue_nonrot (int ) ;
 scalar_t__ cfq_cfqq_idle_window (struct cfq_queue*) ;
 scalar_t__ cfq_cfqq_sync (struct cfq_queue*) ;
 int cfq_log_cfqq (struct cfq_data*,struct cfq_queue*,char*,int) ;
 int cfqq_prio (struct cfq_queue*) ;

__attribute__((used)) static bool cfq_should_idle(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
 enum wl_prio_t prio = cfqq_prio(cfqq);
 struct cfq_rb_root *service_tree = cfqq->service_tree;

 BUG_ON(!service_tree);
 BUG_ON(!service_tree->count);


 if (prio == IDLE_WORKLOAD)
  return 0;


 if (cfqd->cfq_slice_idle == 0)
  return 0;


 if (cfq_cfqq_idle_window(cfqq) &&
    !(blk_queue_nonrot(cfqd->queue) && cfqd->hw_tag))
  return 1;





 if (service_tree->count == 1 && cfq_cfqq_sync(cfqq))
  return 1;
 cfq_log_cfqq(cfqd, cfqq, "Not idling. st->count:%d",
   service_tree->count);
 return 0;
}
