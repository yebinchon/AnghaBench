
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int lock; } ;
struct TYPE_2__ {int command; } ;


 int MPC52xx_PSC_START_BRK ;
 int MPC52xx_PSC_STOP_BRK ;
 TYPE_1__* PSC (struct uart_port*) ;
 int out_8 (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
mpc52xx_uart_break_ctl(struct uart_port *port, int ctl)
{
 unsigned long flags;
 spin_lock_irqsave(&port->lock, flags);

 if (ctl == -1)
  out_8(&PSC(port)->command, MPC52xx_PSC_START_BRK);
 else
  out_8(&PSC(port)->command, MPC52xx_PSC_STOP_BRK);

 spin_unlock_irqrestore(&port->lock, flags);
}
