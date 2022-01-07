
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apm_queue {int event_tail; int * events; } ;
typedef int apm_event_t ;


 int APM_MAX_EVENTS ;

__attribute__((used)) static inline apm_event_t queue_get_event(struct apm_queue *q)
{
 q->event_tail = (q->event_tail + 1) % APM_MAX_EVENTS;
 return q->events[q->event_tail];
}
