
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int elevator; } ;


 int __elv_unregister_queue (int ) ;

void elv_unregister_queue(struct request_queue *q)
{
 if (q)
  __elv_unregister_queue(q->elevator);
}
