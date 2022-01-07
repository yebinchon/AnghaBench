
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fast_timer {int * prev; int next; } ;


 int detach_fast_timer (struct fast_timer*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

int del_fast_timer(struct fast_timer * t)
{
  unsigned long flags;
  int ret;

  local_irq_save(flags);
  ret = detach_fast_timer(t);
  t->next = t->prev = ((void*)0);
  local_irq_restore(flags);
  return ret;
}
