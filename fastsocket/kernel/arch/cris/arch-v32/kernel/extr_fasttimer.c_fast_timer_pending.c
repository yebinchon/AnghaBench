
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fast_timer {int * prev; int * next; } ;


 struct fast_timer const* fast_timer_list ;

__attribute__((used)) static inline int fast_timer_pending (const struct fast_timer * t)
{
  return (t->next != ((void*)0)) || (t->prev != ((void*)0)) || (t == fast_timer_list);
}
