
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int next; int prev; } ;
struct qdio_q {TYPE_1__ entry; } ;
struct qdio_irq {int nr_input_qs; struct qdio_q** input_qs; } ;


 int BUG_ON (int) ;
 int list_del_rcu (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int synchronize_rcu () ;
 int tiq_list_lock ;

void tiqdio_remove_input_queues(struct qdio_irq *irq_ptr)
{
 struct qdio_q *q;

 BUG_ON(irq_ptr->nr_input_qs < 1);
 q = irq_ptr->input_qs[0];

 if (!q || !q->entry.prev || !q->entry.next)
  return;

 mutex_lock(&tiq_list_lock);
 list_del_rcu(&q->entry);
 mutex_unlock(&tiq_list_lock);
 synchronize_rcu();
}
