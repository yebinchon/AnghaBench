
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_list {int rq_pool; int * wait; scalar_t__ elvpriv; scalar_t__* starved; scalar_t__* count; } ;
struct request_queue {int node; struct request_list rq; } ;


 int BLKDEV_MIN_RQ ;
 size_t BLK_RW_ASYNC ;
 size_t BLK_RW_SYNC ;
 int ENOMEM ;
 int init_waitqueue_head (int *) ;
 int mempool_alloc_slab ;
 int mempool_create_node (int ,int ,int ,int ,int ) ;
 int mempool_free_slab ;
 int request_cachep ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int blk_init_free_list(struct request_queue *q)
{
 struct request_list *rl = &q->rq;

 if (unlikely(rl->rq_pool))
  return 0;

 rl->count[BLK_RW_SYNC] = rl->count[BLK_RW_ASYNC] = 0;
 rl->starved[BLK_RW_SYNC] = rl->starved[BLK_RW_ASYNC] = 0;
 rl->elvpriv = 0;
 init_waitqueue_head(&rl->wait[BLK_RW_SYNC]);
 init_waitqueue_head(&rl->wait[BLK_RW_ASYNC]);

 rl->rq_pool = mempool_create_node(BLKDEV_MIN_RQ, mempool_alloc_slab,
    mempool_free_slab, request_cachep, q->node);

 if (!rl->rq_pool)
  return -ENOMEM;

 return 0;
}
