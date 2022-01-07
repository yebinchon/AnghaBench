
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; } ;
struct uart_sio_port {TYPE_1__ list; } ;
struct irq_info {int lock; TYPE_1__* head; } ;


 int BUG_ON (int) ;
 int list_del (TYPE_1__*) ;
 int list_empty (TYPE_1__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void serial_do_unlink(struct irq_info *i, struct uart_sio_port *up)
{
 spin_lock_irq(&i->lock);

 if (!list_empty(i->head)) {
  if (i->head == &up->list)
   i->head = i->head->next;
  list_del(&up->list);
 } else {
  BUG_ON(i->head != &up->list);
  i->head = ((void*)0);
 }

 spin_unlock_irq(&i->lock);
}
