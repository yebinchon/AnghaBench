
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;


 scalar_t__ blk_queue_stopped (struct request_queue*) ;
 int blk_start_queue (struct request_queue*) ;

__attribute__((used)) static void __start_queue(struct request_queue *q)
{
 if (blk_queue_stopped(q))
  blk_start_queue(q);
}
