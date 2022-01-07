
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct as_io_context {int lock; int last_end_request; int state; } ;
struct TYPE_3__ {struct as_io_context* aic; } ;


 int AS_TASK_IORUNNING ;
 TYPE_1__* RQ_IOC (struct request*) ;
 int jiffies ;
 int put_io_context (TYPE_1__*) ;
 scalar_t__ rq_is_sync (struct request*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void as_put_io_context(struct request *rq)
{
 struct as_io_context *aic;

 if (unlikely(!RQ_IOC(rq)))
  return;

 aic = RQ_IOC(rq)->aic;

 if (rq_is_sync(rq) && aic) {
  unsigned long flags;

  spin_lock_irqsave(&aic->lock, flags);
  set_bit(AS_TASK_IORUNNING, &aic->state);
  aic->last_end_request = jiffies;
  spin_unlock_irqrestore(&aic->lock, flags);
 }

 put_io_context(RQ_IOC(rq));
}
