
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fast_timer {struct fast_timer* next; struct fast_timer* prev; } ;


 struct fast_timer* fast_timer_list ;
 int fast_timer_pending (struct fast_timer*) ;
 int fast_timers_deleted ;

__attribute__((used)) static inline int detach_fast_timer (struct fast_timer *t)
{
  struct fast_timer *next, *prev;
  if (!fast_timer_pending(t))
    return 0;
  next = t->next;
  prev = t->prev;
  if (next)
    next->prev = prev;
  if (prev)
    prev->next = next;
  else
    fast_timer_list = next;
  fast_timers_deleted++;
  return 1;
}
