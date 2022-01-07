
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct noop_data {int queue; } ;
struct TYPE_2__ {struct noop_data* elevator_data; } ;


 int list_empty (int *) ;

__attribute__((used)) static int noop_queue_empty(struct request_queue *q)
{
 struct noop_data *nd = q->elevator->elevator_data;

 return list_empty(&nd->queue);
}
