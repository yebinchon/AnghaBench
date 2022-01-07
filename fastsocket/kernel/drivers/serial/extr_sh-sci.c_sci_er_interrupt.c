
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {scalar_t__ type; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ PORT_SCI ;
 int SCxSR ;
 int SCxSR_ERROR_CLEAR (struct uart_port*) ;
 int SCxSR_RDxF_CLEAR (struct uart_port*) ;
 scalar_t__ sci_handle_errors (struct uart_port*) ;
 int sci_handle_fifo_overrun (struct uart_port*) ;
 int sci_in (struct uart_port*,int ) ;
 int sci_out (struct uart_port*,int ,int ) ;
 int sci_rx_interrupt (int,void*) ;
 int sci_tx_interrupt (int,void*) ;

__attribute__((used)) static irqreturn_t sci_er_interrupt(int irq, void *ptr)
{
 struct uart_port *port = ptr;


 if (port->type == PORT_SCI) {
  if (sci_handle_errors(port)) {

   sci_in(port, SCxSR);
   sci_out(port, SCxSR, SCxSR_RDxF_CLEAR(port));
  }
 } else {
  sci_handle_fifo_overrun(port);
  sci_rx_interrupt(irq, ptr);
 }

 sci_out(port, SCxSR, SCxSR_ERROR_CLEAR(port));


 sci_tx_interrupt(irq, ptr);

 return IRQ_HANDLED;
}
