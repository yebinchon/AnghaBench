
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;


 int BIT_CLR (struct uart_port*,int ,int ) ;
 int BIT_SET (struct uart_port*,int ,int ) ;
 int BRK ;
 int UART_R_FCON ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void lh7a40xuart_break_ctl (struct uart_port* port, int break_state)
{
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 if (break_state == -1)
  BIT_SET (port, UART_R_FCON, BRK);
 else
  BIT_CLR (port, UART_R_FCON, BRK);
 spin_unlock_irqrestore(&port->lock, flags);
}
