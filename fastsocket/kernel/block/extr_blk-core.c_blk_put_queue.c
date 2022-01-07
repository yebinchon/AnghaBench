
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int kobj; } ;


 int kobject_put (int *) ;

void blk_put_queue(struct request_queue *q)
{
 kobject_put(&q->kobj);
}
