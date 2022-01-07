
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int kobj; } ;


 int blk_queue_dead (struct request_queue*) ;
 int kobject_get (int *) ;
 scalar_t__ likely (int) ;

int blk_get_queue(struct request_queue *q)
{
 if (likely(!blk_queue_dead(q))) {
  kobject_get(&q->kobj);
  return 0;
 }

 return 1;
}
