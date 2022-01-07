
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int next; } ;
struct request_queue {scalar_t__ flush_pending_idx; scalar_t__ flush_running_idx; int flush_queue_delayed; TYPE_2__* elevator; TYPE_3__ queue_head; } ;
struct request {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* elevator_dispatch_fn ) (struct request_queue*,int ) ;} ;


 int blk_queue_dead (struct request_queue*) ;
 int list_empty (TYPE_3__*) ;
 struct request* list_entry_rq (int ) ;
 int queue_flush_queueable (struct request_queue*) ;
 int stub1 (struct request_queue*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline struct request *__elv_next_request(struct request_queue *q)
{
 struct request *rq;

 while (1) {
  if (!list_empty(&q->queue_head)) {
   rq = list_entry_rq(q->queue_head.next);
   return rq;
  }
  if (q->flush_pending_idx != q->flush_running_idx &&
    !queue_flush_queueable(q)) {
   q->flush_queue_delayed = 1;
   return ((void*)0);
  }
  if (unlikely(blk_queue_dead(q)) ||
      !q->elevator->ops->elevator_dispatch_fn(q, 0))
   return ((void*)0);
 }
}
