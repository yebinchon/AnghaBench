
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int queue_lock; } ;
struct request {int dummy; } ;
struct mmc_queue {int thread_sem; int (* issue_fn ) (struct mmc_queue*,struct request*) ;struct request* req; struct request_queue* queue; } ;
struct TYPE_2__ {int flags; } ;


 int PF_MEMALLOC ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 struct request* blk_fetch_request (struct request_queue*) ;
 int blk_queue_plugged (struct request_queue*) ;
 TYPE_1__* current ;
 int down (int *) ;
 scalar_t__ kthread_should_stop () ;
 int schedule () ;
 int set_current_state (int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int stub1 (struct mmc_queue*,struct request*) ;
 int up (int *) ;

__attribute__((used)) static int mmc_queue_thread(void *d)
{
 struct mmc_queue *mq = d;
 struct request_queue *q = mq->queue;

 current->flags |= PF_MEMALLOC;

 down(&mq->thread_sem);
 do {
  struct request *req = ((void*)0);

  spin_lock_irq(q->queue_lock);
  set_current_state(TASK_INTERRUPTIBLE);
  if (!blk_queue_plugged(q))
   req = blk_fetch_request(q);
  mq->req = req;
  spin_unlock_irq(q->queue_lock);

  if (!req) {
   if (kthread_should_stop()) {
    set_current_state(TASK_RUNNING);
    break;
   }
   up(&mq->thread_sem);
   schedule();
   down(&mq->thread_sem);
   continue;
  }
  set_current_state(TASK_RUNNING);

  mq->issue_fn(mq, req);
 } while (1);
 up(&mq->thread_sem);

 return 0;
}
