
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
typedef int spinlock_t ;
typedef int request_fn_proc ;


 struct request_queue* blk_init_queue_node (int *,int *,int) ;

struct request_queue *blk_init_queue(request_fn_proc *rfn, spinlock_t *lock)
{
 return blk_init_queue_node(rfn, lock, -1);
}
