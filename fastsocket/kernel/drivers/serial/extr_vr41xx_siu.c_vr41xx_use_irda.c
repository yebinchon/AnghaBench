
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uart_port {int lock; } ;
typedef scalar_t__ irda_use_t ;


 scalar_t__ FIR_USE_IRDA ;
 int IRUSESEL ;
 int SIUIRSEL ;
 int siu_read (struct uart_port*,int ) ;
 struct uart_port* siu_uart_ports ;
 int siu_write (struct uart_port*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void vr41xx_use_irda(irda_use_t use)
{
 struct uart_port *port;
 unsigned long flags;
 uint8_t irsel;

 port = &siu_uart_ports[0];

 spin_lock_irqsave(&port->lock, flags);

 irsel = siu_read(port, SIUIRSEL);
 if (use == FIR_USE_IRDA)
  irsel |= IRUSESEL;
 else
  irsel &= ~IRUSESEL;
 siu_write(port, SIUIRSEL, irsel);

 spin_unlock_irqrestore(&port->lock, flags);
}
