
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int lock; scalar_t__ membase; } ;
struct imx_port {TYPE_1__ port; } ;


 scalar_t__ UCR1 ;
 unsigned long UCR1_SNDBRK ;
 unsigned long readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void imx_break_ctl(struct uart_port *port, int break_state)
{
 struct imx_port *sport = (struct imx_port *)port;
 unsigned long flags, temp;

 spin_lock_irqsave(&sport->port.lock, flags);

 temp = readl(sport->port.membase + UCR1) & ~UCR1_SNDBRK;

 if ( break_state != 0 )
  temp |= UCR1_SNDBRK;

 writel(temp, sport->port.membase + UCR1);

 spin_unlock_irqrestore(&sport->port.lock, flags);
}
