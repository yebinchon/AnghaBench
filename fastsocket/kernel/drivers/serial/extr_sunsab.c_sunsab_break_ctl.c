
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct uart_sunsab_port {unsigned char cached_dafo; TYPE_1__ port; int irqflags; } ;
struct uart_port {int dummy; } ;


 unsigned char SAB82532_DAFO_XBRK ;
 int SAB82532_REGS_PENDING ;
 int SAB82532_XPR ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sunsab_tx_idle (struct uart_sunsab_port*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void sunsab_break_ctl(struct uart_port *port, int break_state)
{
 struct uart_sunsab_port *up = (struct uart_sunsab_port *) port;
 unsigned long flags;
 unsigned char val;

 spin_lock_irqsave(&up->port.lock, flags);

 val = up->cached_dafo;
 if (break_state)
  val |= SAB82532_DAFO_XBRK;
 else
  val &= ~SAB82532_DAFO_XBRK;
 up->cached_dafo = val;

 set_bit(SAB82532_REGS_PENDING, &up->irqflags);
 if (test_bit(SAB82532_XPR, &up->irqflags))
  sunsab_tx_idle(up);

 spin_unlock_irqrestore(&up->port.lock, flags);
}
