
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apm_queue {scalar_t__ event_head; scalar_t__ event_tail; } ;



__attribute__((used)) static inline int queue_empty(struct apm_queue *q)
{
 return q->event_head == q->event_tail;
}
