
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; scalar_t__ membase; } ;
typedef int irqreturn_t ;


 int FR_CTS ;
 int IIR_MASK ;
 unsigned char IIR_MIS ;
 unsigned char IIR_RIS ;
 unsigned char IIR_TIS ;
 int IRQ_HANDLED ;
 scalar_t__ UART_FR ;
 scalar_t__ UART_IIR ;
 int netx_rxint (struct uart_port*) ;
 int netx_txint (struct uart_port*) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uart_handle_cts_change (struct uart_port*,int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t netx_int(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 unsigned long flags;
 unsigned char status;

 spin_lock_irqsave(&port->lock,flags);

 status = readl(port->membase + UART_IIR) & IIR_MASK;
 while (status) {
  if (status & IIR_RIS)
   netx_rxint(port);
  if (status & IIR_TIS)
   netx_txint(port);
  if (status & IIR_MIS) {
   if (readl(port->membase + UART_FR) & FR_CTS)
    uart_handle_cts_change(port, 1);
   else
    uart_handle_cts_change(port, 0);
  }
  writel(0, port->membase + UART_IIR);
  status = readl(port->membase + UART_IIR) & IIR_MASK;
 }

 spin_unlock_irqrestore(&port->lock,flags);
 return IRQ_HANDLED;
}
