
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct sa1100_port {TYPE_1__ port; } ;


 unsigned int UART_GET_UTCR3 (struct sa1100_port*) ;
 int UART_PUT_UTCR3 (struct sa1100_port*,unsigned int) ;
 unsigned int UTCR3_BRK ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sa1100_break_ctl(struct uart_port *port, int break_state)
{
 struct sa1100_port *sport = (struct sa1100_port *)port;
 unsigned long flags;
 unsigned int utcr3;

 spin_lock_irqsave(&sport->port.lock, flags);
 utcr3 = UART_GET_UTCR3(sport);
 if (break_state == -1)
  utcr3 |= UTCR3_BRK;
 else
  utcr3 &= ~UTCR3_BRK;
 UART_PUT_UTCR3(sport, utcr3);
 spin_unlock_irqrestore(&sport->port.lock, flags);
}
