
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtimer_list {int entry; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline int vtimer_pending(struct vtimer_list *timer)
{
 return (!list_empty(&timer->entry));
}
