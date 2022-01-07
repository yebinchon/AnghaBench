
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {TYPE_2__* state; scalar_t__ membase; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int tty; } ;
struct TYPE_4__ {TYPE_1__ port; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ ULITE_STATUS ;
 int readb (scalar_t__) ;
 int tty_flip_buffer_push (int ) ;
 int ulite_receive (struct uart_port*,int) ;
 int ulite_transmit (struct uart_port*,int) ;

__attribute__((used)) static irqreturn_t ulite_isr(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 int busy, n = 0;

 do {
  int stat = readb(port->membase + ULITE_STATUS);
  busy = ulite_receive(port, stat);
  busy |= ulite_transmit(port, stat);
  n++;
 } while (busy);


 if (n > 1) {
  tty_flip_buffer_push(port->state->port.tty);
  return IRQ_HANDLED;
 } else {
  return IRQ_NONE;
 }
}
