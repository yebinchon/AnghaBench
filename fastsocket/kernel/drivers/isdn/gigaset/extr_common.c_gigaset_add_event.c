
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_t {int type; int cid; int parameter; void* arg; void* ptr; struct at_state_t* at_state; } ;
struct cardstate {unsigned int ev_tail; unsigned int ev_head; int ev_lock; struct event_t* events; int dev; } ;
struct at_state_t {int dummy; } ;


 unsigned int MAX_EVENTS ;
 int dev_err (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

struct event_t *gigaset_add_event(struct cardstate *cs,
      struct at_state_t *at_state, int type,
      void *ptr, int parameter, void *arg)
{
 unsigned long flags;
 unsigned next, tail;
 struct event_t *event = ((void*)0);

 spin_lock_irqsave(&cs->ev_lock, flags);

 tail = cs->ev_tail;
 next = (tail + 1) % MAX_EVENTS;
 if (unlikely(next == cs->ev_head))
  dev_err(cs->dev, "event queue full\n");
 else {
  event = cs->events + tail;
  event->type = type;
  event->at_state = at_state;
  event->cid = -1;
  event->ptr = ptr;
  event->arg = arg;
  event->parameter = parameter;
  cs->ev_tail = next;
 }

 spin_unlock_irqrestore(&cs->ev_lock, flags);

 return event;
}
