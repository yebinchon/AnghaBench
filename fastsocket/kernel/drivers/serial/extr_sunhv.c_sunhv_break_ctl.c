
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int lock; } ;


 int CON_BREAK ;
 long HV_EOK ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 long sun4v_con_putchar (int ) ;
 int udelay (int) ;

__attribute__((used)) static void sunhv_break_ctl(struct uart_port *port, int break_state)
{
 if (break_state) {
  unsigned long flags;
  int limit = 10000;

  spin_lock_irqsave(&port->lock, flags);

  while (limit-- > 0) {
   long status = sun4v_con_putchar(CON_BREAK);
   if (status == HV_EOK)
    break;
   udelay(1);
  }

  spin_unlock_irqrestore(&port->lock, flags);
 }
}
