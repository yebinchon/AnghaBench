
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_port {scalar_t__ type; int irq; int lock; int mctrl; } ;


 int DSIUINT_ALL ;
 scalar_t__ PORT_VR41XX_DSIU ;
 int TIOCM_OUT2 ;
 int UART_IER ;
 int UART_LCR ;
 int UART_LCR_SBC ;
 int UART_RX ;
 int free_irq (int ,struct uart_port*) ;
 int siu_clear_fifo (struct uart_port*) ;
 int siu_read (struct uart_port*,int ) ;
 int siu_set_mctrl (struct uart_port*,int ) ;
 int siu_write (struct uart_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vr41xx_disable_dsiuint (int ) ;

__attribute__((used)) static void siu_shutdown(struct uart_port *port)
{
 unsigned long flags;
 uint8_t lcr;

 siu_write(port, UART_IER, 0);

 spin_lock_irqsave(&port->lock, flags);

 port->mctrl &= ~TIOCM_OUT2;
 siu_set_mctrl(port, port->mctrl);

 spin_unlock_irqrestore(&port->lock, flags);

 lcr = siu_read(port, UART_LCR);
 lcr &= ~UART_LCR_SBC;
 siu_write(port, UART_LCR, lcr);

 siu_clear_fifo(port);

 (void)siu_read(port, UART_RX);

 if (port->type == PORT_VR41XX_DSIU)
  vr41xx_disable_dsiuint(DSIUINT_ALL);

 free_irq(port->irq, port);
}
