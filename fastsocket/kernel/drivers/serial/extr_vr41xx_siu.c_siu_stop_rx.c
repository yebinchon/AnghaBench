
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_port {int lock; int read_status_mask; } ;


 int UART_IER ;
 int UART_IER_RLSI ;
 int UART_LSR_DR ;
 int siu_read (struct uart_port*,int ) ;
 int siu_write (struct uart_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void siu_stop_rx(struct uart_port *port)
{
 unsigned long flags;
 uint8_t ier;

 spin_lock_irqsave(&port->lock, flags);

 ier = siu_read(port, UART_IER);
 ier &= ~UART_IER_RLSI;
 siu_write(port, UART_IER, ier);

 port->read_status_mask &= ~UART_LSR_DR;

 spin_unlock_irqrestore(&port->lock, flags);
}
