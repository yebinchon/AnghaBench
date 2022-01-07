
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int tag_busy_list; struct blk_queue_tag* queue_tags; } ;
struct blk_queue_tag {int refcnt; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int QUEUE_FLAG_QUEUED ;
 struct blk_queue_tag* __blk_queue_init_tags (struct request_queue*,int) ;
 int atomic_inc (int *) ;
 int blk_queue_resize_tags (struct request_queue*,int) ;
 int kfree (struct blk_queue_tag*) ;
 int queue_flag_set (int ,struct request_queue*) ;
 int queue_flag_set_unlocked (int ,struct request_queue*) ;

int blk_queue_init_tags(struct request_queue *q, int depth,
   struct blk_queue_tag *tags)
{
 int rc;

 BUG_ON(tags && q->queue_tags && tags != q->queue_tags);

 if (!tags && !q->queue_tags) {
  tags = __blk_queue_init_tags(q, depth);

  if (!tags)
   goto fail;
 } else if (q->queue_tags) {
  rc = blk_queue_resize_tags(q, depth);
  if (rc)
   return rc;
  queue_flag_set(QUEUE_FLAG_QUEUED, q);
  return 0;
 } else
  atomic_inc(&tags->refcnt);




 q->queue_tags = tags;
 queue_flag_set_unlocked(QUEUE_FLAG_QUEUED, q);
 INIT_LIST_HEAD(&q->tag_busy_list);
 return 0;
fail:
 kfree(tags);
 return -ENOMEM;
}
