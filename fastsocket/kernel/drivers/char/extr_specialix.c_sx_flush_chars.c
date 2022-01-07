
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ hw_stopped; scalar_t__ stopped; int name; struct specialix_port* driver_data; } ;
struct specialix_port {scalar_t__ xmit_cnt; int IER; int xmit_buf; } ;
struct specialix_board {int lock; } ;


 int CD186x_CAR ;
 int CD186x_IER ;
 int IER_TXRDY ;
 int func_enter () ;
 int func_exit () ;
 struct specialix_board* port_Board (struct specialix_port*) ;
 int port_No (struct specialix_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sx_out (struct specialix_board*,int ,int ) ;
 scalar_t__ sx_paranoia_check (struct specialix_port*,int ,char*) ;

__attribute__((used)) static void sx_flush_chars(struct tty_struct *tty)
{
 struct specialix_port *port = tty->driver_data;
 unsigned long flags;
 struct specialix_board *bp = port_Board(port);

 func_enter();

 if (sx_paranoia_check(port, tty->name, "sx_flush_chars")) {
  func_exit();
  return;
 }
 if (port->xmit_cnt <= 0 || tty->stopped || tty->hw_stopped ||
     !port->xmit_buf) {
  func_exit();
  return;
 }
 spin_lock_irqsave(&bp->lock, flags);
 port->IER |= IER_TXRDY;
 sx_out(port_Board(port), CD186x_CAR, port_No(port));
 sx_out(port_Board(port), CD186x_IER, port->IER);
 spin_unlock_irqrestore(&bp->lock, flags);

 func_exit();
}
