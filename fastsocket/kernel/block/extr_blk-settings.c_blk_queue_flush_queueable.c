
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int flush_not_queueable; } ;



void blk_queue_flush_queueable(struct request_queue *q, bool queueable)
{
 q->flush_not_queueable = !queueable;
}
