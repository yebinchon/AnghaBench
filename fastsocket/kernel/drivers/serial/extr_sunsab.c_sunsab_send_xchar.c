
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int lock; } ;
struct uart_sunsab_port {TYPE_3__ port; TYPE_2__* regs; } ;
struct uart_port {int dummy; } ;
struct TYPE_4__ {int tic; } ;
struct TYPE_5__ {TYPE_1__ w; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sunsab_tec_wait (struct uart_sunsab_port*) ;
 int writeb (char,int *) ;

__attribute__((used)) static void sunsab_send_xchar(struct uart_port *port, char ch)
{
 struct uart_sunsab_port *up = (struct uart_sunsab_port *) port;
 unsigned long flags;

 spin_lock_irqsave(&up->port.lock, flags);

 sunsab_tec_wait(up);
 writeb(ch, &up->regs->w.tic);

 spin_unlock_irqrestore(&up->port.lock, flags);
}
