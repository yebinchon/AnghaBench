
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct elevator_queue* elevator; } ;
struct elevator_queue {void* elevator_data; } ;



__attribute__((used)) static void elevator_attach(struct request_queue *q, struct elevator_queue *eq,
      void *data)
{
 q->elevator = eq;
 eq->elevator_data = data;
}
