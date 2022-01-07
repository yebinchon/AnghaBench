
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct pnx8xxx_port {TYPE_1__ port; } ;


 int PNX8XXX_LCR ;
 unsigned int PNX8XXX_UART_LCR_TXBREAK ;
 unsigned int serial_in (struct pnx8xxx_port*,int ) ;
 int serial_out (struct pnx8xxx_port*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pnx8xxx_break_ctl(struct uart_port *port, int break_state)
{
 struct pnx8xxx_port *sport = (struct pnx8xxx_port *)port;
 unsigned long flags;
 unsigned int lcr;

 spin_lock_irqsave(&sport->port.lock, flags);
 lcr = serial_in(sport, PNX8XXX_LCR);
 if (break_state == -1)
  lcr |= PNX8XXX_UART_LCR_TXBREAK;
 else
  lcr &= ~PNX8XXX_UART_LCR_TXBREAK;
 serial_out(sport, PNX8XXX_LCR, lcr);
 spin_unlock_irqrestore(&sport->port.lock, flags);
}
