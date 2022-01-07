
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx18_in_work_order {int pending; } ;
struct cx18 {int dummy; } ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static
void free_in_work_order(struct cx18 *cx, struct cx18_in_work_order *order)
{
 atomic_set(&order->pending, 0);
}
