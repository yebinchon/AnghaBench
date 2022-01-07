
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irq; } ;
struct uart_sio_port {TYPE_1__ port; int list; } ;
struct irq_info {int lock; int * head; } ;


 int INIT_LIST_HEAD (int *) ;
 struct irq_info* irq_lists ;
 int list_add (int *,int *) ;
 int m32r_sio_interrupt ;
 int request_irq (int,int ,int,char*,struct irq_info*) ;
 int serial_do_unlink (struct irq_info*,struct uart_sio_port*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int serial_link_irq_chain(struct uart_sio_port *up)
{
 struct irq_info *i = irq_lists + up->port.irq;
 int ret, irq_flags = 0;

 spin_lock_irq(&i->lock);

 if (i->head) {
  list_add(&up->list, i->head);
  spin_unlock_irq(&i->lock);

  ret = 0;
 } else {
  INIT_LIST_HEAD(&up->list);
  i->head = &up->list;
  spin_unlock_irq(&i->lock);

  ret = request_irq(up->port.irq, m32r_sio_interrupt,
      irq_flags, "SIO0-RX", i);
  ret |= request_irq(up->port.irq + 1, m32r_sio_interrupt,
      irq_flags, "SIO0-TX", i);
  if (ret < 0)
   serial_do_unlink(i, up);
 }

 return ret;
}
