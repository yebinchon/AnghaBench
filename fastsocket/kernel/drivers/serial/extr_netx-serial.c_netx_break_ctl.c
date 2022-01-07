
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; scalar_t__ membase; } ;


 unsigned int LINE_CR_BRK ;
 scalar_t__ UART_LINE_CR ;
 unsigned int readl (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void netx_break_ctl(struct uart_port *port, int break_state)
{
 unsigned int line_cr;
 spin_lock_irq(&port->lock);

 line_cr = readl(port->membase + UART_LINE_CR);
 if (break_state != 0)
  line_cr |= LINE_CR_BRK;
 else
  line_cr &= ~LINE_CR_BRK;
 writel(line_cr, port->membase + UART_LINE_CR);

 spin_unlock_irq(&port->lock);
}
