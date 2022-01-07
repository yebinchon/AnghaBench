
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct deadline_data {int * fifo_list; } ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;


 size_t READ ;
 size_t WRITE ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static int deadline_queue_empty(struct request_queue *q)
{
 struct deadline_data *dd = q->elevator->elevator_data;

 return list_empty(&dd->fifo_list[WRITE])
  && list_empty(&dd->fifo_list[READ]);
}
