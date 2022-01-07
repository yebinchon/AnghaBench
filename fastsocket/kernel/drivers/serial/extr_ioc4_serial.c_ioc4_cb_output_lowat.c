
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int transmit_chars (struct uart_port*) ;

__attribute__((used)) static void ioc4_cb_output_lowat(struct uart_port *the_port)
{
 unsigned long pflags;


 if (the_port) {
  spin_lock_irqsave(&the_port->lock, pflags);
  transmit_chars(the_port);
  spin_unlock_irqrestore(&the_port->lock, pflags);
 }
}
