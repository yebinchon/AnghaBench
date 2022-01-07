
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int lock; scalar_t__ membase; } ;
struct uart_amba_port {TYPE_1__ port; } ;


 scalar_t__ UART011_LCRH ;
 unsigned int UART01x_LCRH_BRK ;
 unsigned int readw (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static void pl011_break_ctl(struct uart_port *port, int break_state)
{
 struct uart_amba_port *uap = (struct uart_amba_port *)port;
 unsigned long flags;
 unsigned int lcr_h;

 spin_lock_irqsave(&uap->port.lock, flags);
 lcr_h = readw(uap->port.membase + UART011_LCRH);
 if (break_state == -1)
  lcr_h |= UART01x_LCRH_BRK;
 else
  lcr_h &= ~UART01x_LCRH_BRK;
 writew(lcr_h, uap->port.membase + UART011_LCRH);
 spin_unlock_irqrestore(&uap->port.lock, flags);
}
