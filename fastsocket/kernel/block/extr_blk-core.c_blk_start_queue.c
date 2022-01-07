
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 int QUEUE_FLAG_STOPPED ;
 int WARN_ON (int) ;
 int __blk_run_queue (struct request_queue*) ;
 int irqs_disabled () ;
 int queue_flag_clear (int ,struct request_queue*) ;

void blk_start_queue(struct request_queue *q)
{
 WARN_ON(!irqs_disabled());

 queue_flag_clear(QUEUE_FLAG_STOPPED, q);
 __blk_run_queue(q);
}
