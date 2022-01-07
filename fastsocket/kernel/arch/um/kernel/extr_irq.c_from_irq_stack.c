
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {struct thread_info* real_thread; } ;
struct TYPE_2__ {struct thread_info* stack; } ;


 TYPE_1__* current ;
 struct thread_info* current_thread_info () ;
 int pending_mask ;
 unsigned long xchg (int*,int ) ;

unsigned long from_irq_stack(int nested)
{
 struct thread_info *ti, *to;
 unsigned long mask;

 ti = current_thread_info();

 pending_mask = 1;

 to = ti->real_thread;
 current->stack = to;
 ti->real_thread = ((void*)0);
 *to = *ti;

 mask = xchg(&pending_mask, 0);
 return mask & ~1;
}
