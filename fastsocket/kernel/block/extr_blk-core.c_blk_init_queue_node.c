
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
typedef int spinlock_t ;
typedef int request_fn_proc ;


 int GFP_KERNEL ;
 struct request_queue* blk_alloc_queue_node (int ,int) ;
 int blk_cleanup_queue (struct request_queue*) ;
 struct request_queue* blk_init_allocated_queue_node (struct request_queue*,int *,int *,int) ;

struct request_queue *
blk_init_queue_node(request_fn_proc *rfn, spinlock_t *lock, int node_id)
{
 struct request_queue *uninit_q, *q;

 uninit_q = blk_alloc_queue_node(GFP_KERNEL, node_id);
 if (!uninit_q)
  return ((void*)0);

 q = blk_init_allocated_queue_node(uninit_q, rfn, lock, node_id);
 if (!q)
  blk_cleanup_queue(uninit_q);

 return q;
}
