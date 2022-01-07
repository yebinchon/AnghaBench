
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct specialix_port* driver_data; } ;
struct specialix_port {int lock; scalar_t__ xmit_tail; scalar_t__ xmit_head; scalar_t__ xmit_cnt; } ;
struct specialix_board {int dummy; } ;


 int func_enter () ;
 int func_exit () ;
 struct specialix_board* port_Board (struct specialix_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ sx_paranoia_check (struct specialix_port*,int ,char*) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void sx_flush_buffer(struct tty_struct *tty)
{
 struct specialix_port *port = tty->driver_data;
 unsigned long flags;
 struct specialix_board *bp;

 func_enter();

 if (sx_paranoia_check(port, tty->name, "sx_flush_buffer")) {
  func_exit();
  return;
 }

 bp = port_Board(port);
 spin_lock_irqsave(&port->lock, flags);
 port->xmit_cnt = port->xmit_head = port->xmit_tail = 0;
 spin_unlock_irqrestore(&port->lock, flags);
 tty_wakeup(tty);

 func_exit();
}
