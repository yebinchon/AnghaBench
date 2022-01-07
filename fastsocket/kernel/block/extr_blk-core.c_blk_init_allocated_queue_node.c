
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int node; int sg_reserved_size; int * queue_lock; int queue_flags; int unplug_fn; int * unprep_rq_fn; int * prep_rq_fn; int * request_fn; } ;
typedef int spinlock_t ;
typedef int request_fn_proc ;


 int INT_MAX ;
 int QUEUE_FLAG_DEFAULT ;
 scalar_t__ blk_init_free_list (struct request_queue*) ;
 int blk_queue_bio ;
 int blk_queue_congestion_threshold (struct request_queue*) ;
 int blk_queue_make_request (struct request_queue*,int ) ;
 int elevator_init (struct request_queue*,int *) ;
 int generic_unplug_device ;

struct request_queue *
blk_init_allocated_queue_node(struct request_queue *q, request_fn_proc *rfn,
         spinlock_t *lock, int node_id)
{
 if (!q)
  return ((void*)0);

 q->node = node_id;
 if (blk_init_free_list(q))
  return ((void*)0);

 q->request_fn = rfn;
 q->prep_rq_fn = ((void*)0);
 q->unprep_rq_fn = ((void*)0);
 q->unplug_fn = generic_unplug_device;
 q->queue_flags = QUEUE_FLAG_DEFAULT;


 if (lock)
  q->queue_lock = lock;




 blk_queue_make_request(q, blk_queue_bio);

 q->sg_reserved_size = INT_MAX;




 if (!elevator_init(q, ((void*)0))) {
  blk_queue_congestion_threshold(q);
  return q;
 }

 return ((void*)0);
}
