
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;


 int UBRLCR (struct uart_port*) ;
 unsigned int UBRLCR_BREAK ;
 unsigned int clps_readl (int ) ;
 int clps_writel (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void clps711xuart_break_ctl(struct uart_port *port, int break_state)
{
 unsigned long flags;
 unsigned int ubrlcr;

 spin_lock_irqsave(&port->lock, flags);
 ubrlcr = clps_readl(UBRLCR(port));
 if (break_state == -1)
  ubrlcr |= UBRLCR_BREAK;
 else
  ubrlcr &= ~UBRLCR_BREAK;
 clps_writel(ubrlcr, UBRLCR(port));
 spin_unlock_irqrestore(&port->lock, flags);
}
