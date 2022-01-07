
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;


 unsigned int* CSR_H_UBRLCR ;
 unsigned int H_UBRLCR_BREAK ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void serial21285_break_ctl(struct uart_port *port, int break_state)
{
 unsigned long flags;
 unsigned int h_lcr;

 spin_lock_irqsave(&port->lock, flags);
 h_lcr = *CSR_H_UBRLCR;
 if (break_state)
  h_lcr |= H_UBRLCR_BREAK;
 else
  h_lcr &= ~H_UBRLCR_BREAK;
 *CSR_H_UBRLCR = h_lcr;
 spin_unlock_irqrestore(&port->lock, flags);
}
