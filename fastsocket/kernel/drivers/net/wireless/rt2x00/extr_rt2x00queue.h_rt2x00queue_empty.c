
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_queue {scalar_t__ length; } ;



__attribute__((used)) static inline int rt2x00queue_empty(struct data_queue *queue)
{
 return queue->length == 0;
}
