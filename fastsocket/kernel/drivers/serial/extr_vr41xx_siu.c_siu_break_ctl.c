
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_port {int lock; } ;


 int UART_LCR ;
 int UART_LCR_SBC ;
 int siu_read (struct uart_port*,int ) ;
 int siu_write (struct uart_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void siu_break_ctl(struct uart_port *port, int ctl)
{
 unsigned long flags;
 uint8_t lcr;

 spin_lock_irqsave(&port->lock, flags);

 lcr = siu_read(port, UART_LCR);
 if (ctl == -1)
  lcr |= UART_LCR_SBC;
 else
  lcr &= ~UART_LCR_SBC;
 siu_write(port, UART_LCR, lcr);

 spin_unlock_irqrestore(&port->lock, flags);
}
