
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; scalar_t__ membase; } ;


 scalar_t__ MCFUART_UCR ;
 int MCFUART_UCR_CMDBREAKSTART ;
 int MCFUART_UCR_CMDBREAKSTOP ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void mcf_break_ctl(struct uart_port *port, int break_state)
{
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 if (break_state == -1)
  writeb(MCFUART_UCR_CMDBREAKSTART, port->membase + MCFUART_UCR);
 else
  writeb(MCFUART_UCR_CMDBREAKSTOP, port->membase + MCFUART_UCR);
 spin_unlock_irqrestore(&port->lock, flags);
}
