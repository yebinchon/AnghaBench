
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int QUEUE_FLAG_QUEUED ;
 int queue_flag_clear_unlocked (int ,struct request_queue*) ;

void blk_queue_free_tags(struct request_queue *q)
{
 queue_flag_clear_unlocked(QUEUE_FLAG_QUEUED, q);
}
