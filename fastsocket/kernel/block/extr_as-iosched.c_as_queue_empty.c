
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {TYPE_1__* elevator; } ;
struct as_data {int * fifo_list; } ;
struct TYPE_2__ {struct as_data* elevator_data; } ;


 size_t BLK_RW_ASYNC ;
 size_t BLK_RW_SYNC ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static int as_queue_empty(struct request_queue *q)
{
 struct as_data *ad = q->elevator->elevator_data;

 return list_empty(&ad->fifo_list[BLK_RW_ASYNC])
  && list_empty(&ad->fifo_list[BLK_RW_SYNC]);
}
