
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int rng; int dsr; } ;
struct uart_port {TYPE_2__* state; TYPE_3__ icount; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int delta_msr_wait; } ;
struct TYPE_5__ {TYPE_1__ port; } ;


 int IRQ_HANDLED ;
 unsigned int UART_GET_MSR (struct uart_port*) ;
 unsigned int URMS_URDCTS ;
 unsigned int URMS_URDDCD ;
 unsigned int URMS_URDDST ;
 unsigned int URMS_URTERI ;
 int uart_handle_cts_change (struct uart_port*,unsigned int) ;
 int uart_handle_dcd_change (struct uart_port*,unsigned int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t ks8695uart_modem_status(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 unsigned int status;




 status = UART_GET_MSR(port);

 if (status & URMS_URDDCD)
  uart_handle_dcd_change(port, status & URMS_URDDCD);

 if (status & URMS_URDDST)
  port->icount.dsr++;

 if (status & URMS_URDCTS)
  uart_handle_cts_change(port, status & URMS_URDCTS);

 if (status & URMS_URTERI)
  port->icount.rng++;

 wake_up_interruptible(&port->state->port.delta_msr_wait);

 return IRQ_HANDLED;
}
