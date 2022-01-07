
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18_in_work_order {int pending; } ;
struct cx18 {struct cx18_in_work_order* in_work_order; } ;


 int CX18_MAX_IN_WORK_ORDERS ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;

__attribute__((used)) static inline
struct cx18_in_work_order *alloc_in_work_order_irq(struct cx18 *cx)
{
 int i;
 struct cx18_in_work_order *order = ((void*)0);

 for (i = 0; i < CX18_MAX_IN_WORK_ORDERS; i++) {
  if (atomic_read(&cx->in_work_order[i].pending) == 0) {
   order = &cx->in_work_order[i];
   atomic_set(&order->pending, 1);
   break;
  }
 }
 return order;
}
