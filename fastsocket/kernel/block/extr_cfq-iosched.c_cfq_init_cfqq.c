
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfq_queue {int pid; struct cfq_data* cfqd; scalar_t__ ref; int fifo; int p_node; int rb_node; } ;
struct cfq_data {int dummy; } ;
typedef int pid_t ;


 int INIT_LIST_HEAD (int *) ;
 int RB_CLEAR_NODE (int *) ;
 int cfq_class_idle (struct cfq_queue*) ;
 int cfq_mark_cfqq_idle_window (struct cfq_queue*) ;
 int cfq_mark_cfqq_prio_changed (struct cfq_queue*) ;
 int cfq_mark_cfqq_sync (struct cfq_queue*) ;

__attribute__((used)) static void cfq_init_cfqq(struct cfq_data *cfqd, struct cfq_queue *cfqq,
     pid_t pid, bool is_sync)
{
 RB_CLEAR_NODE(&cfqq->rb_node);
 RB_CLEAR_NODE(&cfqq->p_node);
 INIT_LIST_HEAD(&cfqq->fifo);

 cfqq->ref = 0;
 cfqq->cfqd = cfqd;

 cfq_mark_cfqq_prio_changed(cfqq);

 if (is_sync) {
  if (!cfq_class_idle(cfqq))
   cfq_mark_cfqq_idle_window(cfqq);
  cfq_mark_cfqq_sync(cfqq);
 }
 cfqq->pid = pid;
}
