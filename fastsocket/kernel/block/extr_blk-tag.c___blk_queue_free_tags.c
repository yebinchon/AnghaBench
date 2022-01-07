
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct blk_queue_tag* queue_tags; } ;
struct blk_queue_tag {int dummy; } ;


 int QUEUE_FLAG_QUEUED ;
 int __blk_free_tags (struct blk_queue_tag*) ;
 int queue_flag_clear_unlocked (int ,struct request_queue*) ;

void __blk_queue_free_tags(struct request_queue *q)
{
 struct blk_queue_tag *bqt = q->queue_tags;

 if (!bqt)
  return;

 __blk_free_tags(bqt);

 q->queue_tags = ((void*)0);
 queue_flag_clear_unlocked(QUEUE_FLAG_QUEUED, q);
}
