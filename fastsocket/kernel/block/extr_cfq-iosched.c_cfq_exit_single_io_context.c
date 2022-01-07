
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; } ;
struct io_context {int dummy; } ;
struct cfq_io_context {struct cfq_data* key; } ;
struct cfq_data {struct request_queue* queue; } ;


 int __cfq_exit_single_io_context (struct cfq_data*,struct cfq_io_context*) ;
 int smp_read_barrier_depends () ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void cfq_exit_single_io_context(struct io_context *ioc,
           struct cfq_io_context *cic)
{
 struct cfq_data *cfqd = cic->key;

 if (cfqd) {
  struct request_queue *q = cfqd->queue;
  unsigned long flags;

  spin_lock_irqsave(q->queue_lock, flags);





  smp_read_barrier_depends();
  if (cic->key)
   __cfq_exit_single_io_context(cfqd, cic);

  spin_unlock_irqrestore(q->queue_lock, flags);
 }
}
