
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;
struct msm_port {int imr; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int UART_IMR ;
 unsigned int UART_IMR_DELTA_CTS ;
 unsigned int UART_IMR_RXLEV ;
 unsigned int UART_IMR_RXSTALE ;
 unsigned int UART_IMR_TXLEV ;
 int UART_MISR ;
 struct msm_port* UART_TO_MSM (struct uart_port*) ;
 int handle_delta_cts (struct uart_port*) ;
 int handle_rx (struct uart_port*) ;
 int handle_tx (struct uart_port*) ;
 unsigned int msm_read (struct uart_port*,int ) ;
 int msm_write (struct uart_port*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t msm_irq(int irq, void *dev_id)
{
 struct uart_port *port = dev_id;
 struct msm_port *msm_port = UART_TO_MSM(port);
 unsigned int misr;

 spin_lock(&port->lock);
 misr = msm_read(port, UART_MISR);
 msm_write(port, 0, UART_IMR);

 if (misr & (UART_IMR_RXLEV | UART_IMR_RXSTALE))
  handle_rx(port);
 if (misr & UART_IMR_TXLEV)
  handle_tx(port);
 if (misr & UART_IMR_DELTA_CTS)
  handle_delta_cts(port);

 msm_write(port, msm_port->imr, UART_IMR);
 spin_unlock(&port->lock);

 return IRQ_HANDLED;
}
